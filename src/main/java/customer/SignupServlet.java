package customer;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/SignupServlet")
public class SignupServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        String mobile = request.getParameter("mobile");
        String email = request.getParameter("email");
        String username = request.getParameter("username");
        String password = request.getParameter("password");
       
        if (name == null || mobile == null || email == null || username == null || password == null) {
            response.sendRedirect("error.jsp");
            return;
        }
        
        try (Connection connection = DBConnection.getConnection()) {
            if (isUsernameExists(connection, username)) {
                request.setAttribute("errorMessage", "Username already exists. Please choose another one.");
                request.getRequestDispatcher("signup.jsp").forward(request, response);
                return;
            }
   
            String query = "INSERT INTO customer (cname, mobile, email, username, password) VALUES (?, ?, ?, ?, ?)";
            
            try (PreparedStatement preparedStatement = connection.prepareStatement(query)) {
                preparedStatement.setString(1, name);
                preparedStatement.setString(2, mobile);
                preparedStatement.setString(3, email);
                preparedStatement.setString(4, username);
                preparedStatement.setString(5, password);
                
                int rowsInserted = preparedStatement.executeUpdate();
                if (rowsInserted > 0) {
                    HttpSession session = request.getSession();
                    session.setAttribute("username", username);
                    session.setAttribute("name", name);
                    session.setAttribute("mobile", mobile);
                    session.setAttribute("email", email);
        
                    response.sendRedirect("profile.jsp");
                    return;
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
            response.sendRedirect("error.jsp");
        }
    }
    
    private boolean isUsernameExists(Connection connection, String username) throws SQLException {
        String query = "SELECT COUNT(*) FROM customer WHERE username = ?";
        
        try (PreparedStatement preparedStatement = connection.prepareStatement(query)) {
            preparedStatement.setString(1, username);
            try (ResultSet resultSet = preparedStatement.executeQuery()) {
                if (resultSet.next()) {
                    int count = resultSet.getInt(1);
                    return count > 0;
                }
            }
        }
        return false;
    }
}

