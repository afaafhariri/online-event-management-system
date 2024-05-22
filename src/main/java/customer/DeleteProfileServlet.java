package customer;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/DeleteProfileServlet")
public class DeleteProfileServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = (String) request.getSession().getAttribute("username");

        if (username == null || username.isEmpty()) {
            response.getWriter().println("Please provide a valid username.");
            return;
        }

        try (Connection connection = DBConnection.getConnection()) {
            if (connection != null) {
                String sql = "DELETE FROM customer WHERE username=?";
                try (PreparedStatement statement = connection.prepareStatement(sql)) {
                    statement.setString(1, username);
                    
                    int rowsDeleted = statement.executeUpdate();
                    if (rowsDeleted > 0) {
                        response.sendRedirect("hero.jsp");
                    } else {
                        response.sendRedirect("user-not-found.jsp");
                    }
                }
            } else {
                response.sendRedirect("database-error.jsp");
            }
        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("error.jsp");
        }
    }
}
