package com.raman.events;

import javax.xml.bind.annotation.XmlRootElement;

@XmlRootElement
public class Event {
	private int eventno;
	private String title, location, organizer, mobile, email, entryfee, prize, eventdate, startat, endat, totaldays;
	public String getEventdate() {
		return eventdate;
	}
	public void setEventdate(String eventdate) {
		this.eventdate = eventdate;
	}
	public int getEventno() {
		return eventno;
	}
	public void setEventno(int eventno) {
		this.eventno = eventno;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public String getOrganizer() {
		return organizer;
	}
	public void setOrganizer(String organizer) {
		this.organizer = organizer;
	}
	public String getMobile() {
		return mobile;
	}
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getEntryfee() {
		return entryfee;
	}
	public void setEntryfee(String entryfee) {
		this.entryfee = entryfee;
	}
	public String getPrize() {
		return prize;
	}
	public void setPrize(String prize) {
		this.prize = prize;
	}
	public String getStartat() {
		return startat;
	}
	public void setStartat(String startat) {
		this.startat = startat;
	}
	public String getEndat() {
		return endat;
	}
	public void setEndat(String endat) {
		this.endat = endat;
	}
	public String getTotaldays() {
		return totaldays;
	}
	public void setTotaldays(String totaldays) {
		this.totaldays = totaldays;
	}
	@Override
	public String toString() {
		return "Event [eventno=" + eventno + ", title=" + title + ", location=" + location + ", organizer=" + organizer
				+ ", mobile=" + mobile + ", email=" + email + ", entryfee=" + entryfee + ", prize=" + prize
				+ ", eventdate=" + eventdate + ", startat=" + startat + ", endat=" + endat + ", totaldays=" + totaldays
				+ "]";
	}
	
	
	
	
}
