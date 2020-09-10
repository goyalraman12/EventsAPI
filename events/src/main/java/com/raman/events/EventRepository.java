package com.raman.events;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;







public class EventRepository {

	static Connection con = DatabaseConnection.getConnection();
	
	
	public List<Event> getEvents()
	{
		List<Event> events = new ArrayList<>();
		String query = "select * from eventdetails";
		
		try 
		{
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery(query);
			while(rs.next()) 
			{
				Event a = new Event();
				a.setEventno(rs.getInt(1));
				a.setTitle(rs.getString(2));
				a.setLocation(rs.getString(3));
				a.setOrganizer(rs.getString(4));
				a.setMobile(rs.getString(5));
				a.setEmail(rs.getString(6));
				a.setEntryfee(rs.getString(7));
				a.setPrize(rs.getString(8));
				a.setEventdate(rs.getString(9));
				a.setStartat(rs.getString(10));
				a.setEndat(rs.getString(11));
				a.setTotaldays(rs.getString(12));
				
				
				events.add(a);
			}
		}
		catch(Exception e) 
		{
			System.out.println(e);
		}
		return events;
	}
	
	public Event getEvent(int id) 
	{
		String query = "select * from eventdetails where eventno ="+id;
		Event a = new Event();
		try 
		{
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery(query);
			if(rs.next()) 
			{
				
				a.setEventno(rs.getInt(1));
				a.setTitle(rs.getString(2));
				a.setLocation(rs.getString(3));
				a.setOrganizer(rs.getString(4));
				a.setMobile(rs.getString(5));
				a.setEmail(rs.getString(6));
				a.setEntryfee(rs.getString(7));
				a.setPrize(rs.getString(8));
				a.setEventdate(rs.getString(9));
				a.setStartat(rs.getString(10));
				a.setEndat(rs.getString(11));
				a.setTotaldays(rs.getString(12));
			}
		}
		catch(Exception e) 
		{
			System.out.println(e);
		}
		return a;
	}
	public void create(Event a1)
	{
		String query = "insert into eventdetails values (?,?,?,?,?,?,?,?,?,?,?,?)";
		try 
		{
			String select = "select * from eventdetails";
			int count =0;
			/*Statement st = con.createStatement();
			ResultSet rs = st.executeQuery(select);
			while(rs.next()) 
			{
				count=rs.getInt(1);
			}*/
			
			PreparedStatement pst = con.prepareStatement(query);
			pst.setInt(1, a1.getEventno());
			pst.setString(2, a1.getTitle());
			pst.setString(3, a1.getLocation());
			pst.setString(4,a1.getOrganizer());
			pst.setString(5,a1.getMobile());
			pst.setString(6,a1.getEmail());
			pst.setString(7,a1.getEntryfee());
			pst.setString(8,a1.getPrize());
			pst.setString(9,a1.getEventdate());
			pst.setString(10,a1.getStartat());
			pst.setString(11,a1.getEndat());
			pst.setString(12,a1.getTotaldays());
			
			pst.executeUpdate();
	
		}
		catch(Exception e) 
		{
			System.out.println(e);
		}
	}
	
	public void update(Event a1)
	{
		String query = "update eventdetails set title=?, location=?,organizer=?, mobile=?, email=?, entryfee=?, prize=?, eventdate=?, startat=?, endat=?, totaldays=? where eventno=?";
		try 
		{
			PreparedStatement pst = con.prepareStatement(query);
			
			pst.setString(1, a1.getTitle());
			pst.setString(2, a1.getLocation());
			pst.setString(3,a1.getOrganizer());
			pst.setString(4,a1.getMobile());
			pst.setString(5,a1.getEmail());
			pst.setString(6,a1.getEntryfee());
			pst.setString(7,a1.getPrize());
			pst.setString(8,a1.getEventdate());
			pst.setString(9,a1.getStartat());
			pst.setString(10,a1.getEndat());
			pst.setString(11,a1.getTotaldays());
			pst.setInt(12, a1.getEventno());
			pst.executeUpdate();
			
		}
		catch(Exception e) 
		{
			System.out.println(e);
		}
	}
	
	public void delete(int eventno) {
		String query = "delete from eventdetails where eventno=?";
		try 
		{
			PreparedStatement pst = con.prepareStatement(query);
			pst.setInt(1, eventno);
			pst.executeUpdate();
	
		}
		catch(Exception e) 
		{
			System.out.println(e);
		}
			
	}
	
}
