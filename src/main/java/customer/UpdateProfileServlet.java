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

@WebServlet("/UpdateProfileServlet")
public class UpdateProfileServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	HttpSession session = request.getSession(false);
        if (session == null) {
            response.sendRedirect("signin.jsp");
            return;
        }
        
        String currentUsername = (String) session.getAttribute("username");
        if (currentUsername == null) {
            response.sendRedirect("signin.jsp");
            return;
        }
        
        String newName = request.getParameter("name");
        String newMobile = request.getParameter("mobile");
        String newEmail = request.getParameter("email");
        String newUsername = request.getParameter("username");
        
        if (newName == null || newMobile == null || newEmail == null || newUsername == null) {
            response.sendRedirect("error.jsp");
            return;
        }
        
        try (Connection connection = DBConnection.getConnection()) {
            if (!currentUsername.equals(newUsername) && isUsernameExists(connection, newUsername)) {
            	request.setAttribute("usernameExists", true);
                request.getRequestDispatcher("editpro.jsp").forward(request, response);
                return;
            }
            
            String query = "UPDATE customer SET cname=?, mobile=?, email=?, username=? WHERE username=?";
            
            try (PreparedStatement preparedStatement = connection.prepareStatement(query)) {
                preparedStatement.setString(1, newName);
                preparedStatement.setString(2, newMobile);
                preparedStatement.setString(3, newEmail);
                preparedStatement.setString(4, newUsername);
                preparedStatement.setString(5, currentUsername);
                
                int rowsUpdated = preparedStatement.executeUpdate();
                if (rowsUpdated > 0) {
                    session.setAttribute("username", newUsername);
                    session.setAttribute("name", newName);
                    session.setAttribute("mobile", newMobile);
                    session.setAttribute("email", newEmail);
                    
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

