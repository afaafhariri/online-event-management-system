package customer;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ProfileServlet")
public class ProfileServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
        String username = request.getParameter("username");

        Connection connection = DBConnection.getConnection();
        if (connection != null) {
            try {
                String sql = "SELECT cname, email, mobile, username FROM customer WHERE username=?";
                PreparedStatement statement = connection.prepareStatement(sql);
                statement.setString(1, username);
                ResultSet resultSet = statement.executeQuery();

                if (resultSet.next()) {
                    request.setAttribute("name", resultSet.getString("cname"));
                    request.setAttribute("email", resultSet.getString("email"));
                    request.setAttribute("mobile", resultSet.getString("mobile"));
                    request.setAttribute("username", resultSet.getString("username"));
                    request.getRequestDispatcher("profile.jsp").forward(request, response);
                } else {
                    response.getWriter().println("<p>User not found.</p>");
                }
            } catch (Exception e) {
                response.getWriter().println("Error: " + e.getMessage());
            } finally {
                DBConnection.closeConnection(connection);
            }
        } else {
            response.getWriter().println("Failed to connect to the database.");
        }
    }
}

