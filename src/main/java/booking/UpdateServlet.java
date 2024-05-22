package booking;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/UpdateServlet")
public class UpdateServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    private BookingDAO bookingDAO;

    public void init() {
        bookingDAO = new BookingDAO();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int bid = Integer.parseInt(request.getParameter("bid"));
        String organizer = request.getParameter("organizer");
        String event = request.getParameter("event");
        String address = request.getParameter("address");
        String eventdate = request.getParameter("eventdate");
        String customermobile = request.getParameter("customermobile");
        
        boolean success = bookingDAO.updateBooking(bid, organizer, event, address, eventdate, customermobile);
        
        if (success) {
            Booking newBooking = bookingDAO.getBookingById(bid);
            request.setAttribute("newBooking", newBooking);
            request.getRequestDispatcher("bookingdisplay.jsp").forward(request, response);
        } else {
            response.sendRedirect("error.jsp");
        }
    }
}

