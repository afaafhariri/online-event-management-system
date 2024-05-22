package booking;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


public class BookingDAO {
    public boolean insertBooking(String organizer, String event, String address, String eventdate, String customermobile) {
        Connection conn = null;
        PreparedStatement stmt = null;
        boolean success = false;
        
        try {
            conn = DBConnection.getConnection();
            String sql = "INSERT INTO booking (organizer, event, address, eventdate, customermobile) VALUES (?, ?, ?, ?, ?)";
            
            stmt = conn.prepareStatement(sql);
            stmt.setString(1, organizer);
            stmt.setString(2, event);
            stmt.setString(3, address);
            stmt.setString(4, eventdate);
            stmt.setString(5, customermobile);
            
            int rowsInserted = stmt.executeUpdate();
            
            if (rowsInserted > 0) {
                success = true;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                if (stmt != null) {
                    stmt.close();
                }
                if (conn != null) {
                    conn.close();
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        
        return success;
    }
    
    
    public Booking getBookingByDetails(String organizer, String event, String address, String eventdate, String customermobile) {
    	Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;
        Booking booking = null;
         
        try {
            conn = DBConnection.getConnection();
            String sql = "SELECT bid, organizer, event, address, eventdate, customermobile FROM booking WHERE organizer=? AND event=? AND address=? AND eventdate=? AND customermobile=?";
            stmt = conn.prepareStatement(sql);
             
            stmt.setString(1, organizer);
            stmt.setString(2, event);
            stmt.setString(3, address);
            stmt.setString(4, eventdate);
            stmt.setString(5, customermobile);
             
            rs = stmt.executeQuery();
             
            if (rs != null && rs.next()) {
            	int bid = rs.getInt("bid");
            	booking = new Booking(
            		bid,
            		rs.getString("organizer"),
            		rs.getString("event"),
            		rs.getString("address"),
            		rs.getString("eventdate"),
            		rs.getString("customermobile")
                 );
             }
         
        } catch (SQLException e) {
             e.printStackTrace();
        } finally {
        	try {
        		if (rs != null) {
                    rs.close();
                }
                if (stmt != null) {
                    stmt.close();
                }
                if (conn != null) {
                    conn.close();
                }
        	} catch (SQLException e) {
        		e.printStackTrace();
            }
        }
         
        return booking;
    }
    public Booking getBookingById(int bid) {
        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;
        Booking booking = null;
         
        try {
            conn = DBConnection.getConnection();
            String sql = "SELECT organizer, event, address, eventdate, customermobile FROM booking WHERE bid=?";
            stmt = conn.prepareStatement(sql);
             
            stmt.setInt(1, bid);
             
            rs = stmt.executeQuery();
             
            if (rs != null && rs.next()) {
                booking = new Booking(
                    bid,
                    rs.getString("organizer"),
                    rs.getString("event"),
                    rs.getString("address"),
                    rs.getString("eventdate"),
                    rs.getString("customermobile")
                );
            }
        } catch (SQLException e) {
             e.printStackTrace();
        } finally {
            try {
                if (rs != null) {
                    rs.close();
                }
                if (stmt != null) {
                    stmt.close();
                }
                if (conn != null) {
                    conn.close();
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
         
        return booking;
    }
    
    public boolean updateBooking(int bid, String organizer, String event, String address, String eventdate, String customermobile) {
        Connection conn = null;
        PreparedStatement stmt = null;
        boolean success = false;
        
        try {
            conn = DBConnection.getConnection();
            
            String sql = "UPDATE booking SET organizer=?, event=?, address=?, eventdate=?, customermobile=? WHERE bid=?";
            stmt = conn.prepareStatement(sql);
            stmt.setString(1, organizer);
            stmt.setString(2, event);
            stmt.setString(3, address);
            stmt.setString(4, eventdate);
            stmt.setString(5, customermobile);
            stmt.setInt(6, bid);
            
            int rowsUpdated = stmt.executeUpdate();
            
            if (rowsUpdated > 0) {
                success = true;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                if (stmt != null) {
                    stmt.close();
                }
                if (conn != null) {
                    conn.close();
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        
        return success;
    }
    
    public boolean deleteBooking(int bid) {
        Connection conn = null;
        PreparedStatement stmt = null;
        boolean success = false;
        
        try {
            conn = DBConnection.getConnection();
          
            String sql = "DELETE FROM booking WHERE bid=?";
            stmt = conn.prepareStatement(sql);
            
            stmt.setInt(1, bid);
            
            int rowsDeleted = stmt.executeUpdate();
            
            if (rowsDeleted > 0) {
                success = true;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                if (stmt != null) {
                    stmt.close();
                }
                if (conn != null) {
                    conn.close();
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        
        return success;
    }
}