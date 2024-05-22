package booking;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/DeleteServlet")
public class DeleteServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    
    private BookingDAO bookingDAO;

    public void init() {
        bookingDAO = new BookingDAO();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int bid = Integer.parseInt(request.getParameter("bid"));
        boolean success = bookingDAO.deleteBooking(bid);
        
        if (success) {
        	 response.setContentType("text/html");
             PrintWriter out = response.getWriter();
             out.println("<script type=\"text/javascript\">");
             out.println("alert('Booking deleted successfully');");
             out.println("window.location.href = 'event.jsp';");
             out.println("</script>");
        } else {
            response.sendRedirect("error.jsp");
        }
    }
}