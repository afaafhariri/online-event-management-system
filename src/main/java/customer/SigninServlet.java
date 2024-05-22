package customer;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/SigninServlet")
public class SigninServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        String username = request.getParameter("username");
        String password = request.getParameter("password");

        Connection connection = DBConnection.getConnection();
        if (connection != null) {
            try {
                String sql = "SELECT * FROM customer WHERE username=?";
                PreparedStatement statement = connection.prepareStatement(sql);
                statement.setString(1, username);
                ResultSet resultSet = statement.executeQuery();
                
                if (resultSet.next()) {
                    String dbPassword = resultSet.getString("password");
                    if (password.equals(dbPassword)) {
                        HttpSession session = request.getSession();
                        String name = resultSet.getString("cname");
                        String mobile = resultSet.getString("mobile");
                        String email = resultSet.getString("email");
                        
                        session.setAttribute("username", username);
                        session.setAttribute("name", name);
                        session.setAttribute("mobile", mobile);
                        session.setAttribute("email", email);
                        
                        response.sendRedirect("profile.jsp");
                    } else {
                        out.println("<p>Login failed. Please check your password.</p>");
                    }
                } else {
                    out.println("<p>Login failed. User not found.</p>");
                }
            } catch (Exception e) {
                out.println("Error: " + e.getMessage());
            } finally {
                DBConnection.closeConnection(connection);
            }
        } else {
            out.println("Failed to connect to the database.");
        }
        out.close();
    }
}