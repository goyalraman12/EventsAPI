package com.raman.events;

import java.util.List;

import javax.ws.rs.Consumes;
import javax.ws.rs.DELETE;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.PUT;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;








@Path("events")
public class EventResource {
	EventRepository repo = new EventRepository();
	
	@GET
	@Produces({MediaType.APPLICATION_JSON,MediaType.APPLICATION_XML})
	public List<Event> getEvents() 
	{
		System.out.println("getEvents called ...");
		return repo.getEvents();
	}
	
	@GET
	@Path("event/{id}")
	@Produces({MediaType.APPLICATION_JSON,MediaType.APPLICATION_XML})
	public Event getEvent(@PathParam("id") int id)
	{
		return repo.getEvent(id);
	}
	
	@POST
	@Path("event")
	@Consumes({MediaType.APPLICATION_XML,MediaType.APPLICATION_JSON})
	public Event createUser(Event a1)
	{
		System.out.println(a1);
		repo.create(a1);
		
		return a1;
	}
	
	@PUT
	@Path("event")
	@Consumes({MediaType.APPLICATION_XML,MediaType.APPLICATION_JSON})
	public Event updateEvent(Event a1)
	{
		System.out.println(a1);
		if(repo.getEvent(a1.getEventno()).getEventno()==0) 
		{
			repo.create(a1);
		}
		repo.update(a1);
		return a1;
	}
	
	@DELETE
	@Path("event/{eventno}")
	 public Event deleteEvent(@PathParam("eventno") int eventno)
	 {
		 Event a = repo.getEvent(eventno);
		
		 if(a.getEventno()!=0)
			 repo.delete(eventno);
		 
		 return a;
	 }

}
