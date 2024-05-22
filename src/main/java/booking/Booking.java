package booking;

public class Booking {
    private int bid;
    private String organizer;
    private String event;
    private String address;
    private String eventdate;
    private String customermobile;

    public Booking() {
    }

    public Booking(int bid, String organizer, String event, String address, String eventdate, String customermobile) {
		this.bid = bid;
    	this.organizer = organizer;
		this.event = event;
		this.address = address;
		this.eventdate = eventdate;
		this.customermobile = customermobile;
	}

	public int getBid() {
        return bid;
    }

    public void setBid(int bid) {
        this.bid = bid;
    }

    public String getOrganizer() {
        return organizer;
    }

    public void setOrganizer(String organizer) {
        this.organizer = organizer;
    }

    public String getEvent() {
        return event;
    }

    public void setEvent(String event) {
        this.event = event;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getEventdate() {
		return eventdate;
	}

	public void setEventdate(String eventdate) {
		this.eventdate = eventdate;
	}
    public String getCustomermobile() {
        return customermobile;
    }

    public void setCustomermobile(String customermobile) {
        this.customermobile = customermobile;
    }
}