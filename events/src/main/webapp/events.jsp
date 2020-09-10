<html lang="en">
  <head>
  
  	<p id="demo"></p>
  	<style>
  		*
  		{
  			box-sizing: border-box
		}

		html
		{
 			-webkit-font-smoothing: antialiased;
  			-moz-osx-font-smoothing: grayscale;
  			font-family: 'Dosis', sans-serif;
  			line-height: 1.6;
			color: #666;
  			background: #F6F6F6;
		}	

		#root 
		{
  			max-width: 1200px;
  			margin: 0 auto;
		}

		h1 
		{
  			text-align: center;
  			padding: 1.5rem 2.5rem;
  			background-image: linear-gradient(120deg, #fbc2eb 0%, #a6c1ee 100%);
  			margin: 0 0 2rem 0;
  			font-size: 1.5rem;
  			color: white;
		}

		img 
		{
  			display: block;
  			margin: 1rem auto;
  			max-width: 100%;
		}

		p 
		{
  			padding: 0 2.5rem 2.5rem;
		 	margin: 0;
		}

		.container 
		{
  			display: flex;
  			flex-wrap: wrap;
		}

		.card 
		{
  			margin: 1rem;
  			background: white;
  			box-shadow: 2px 4px 25px rgba(0, 0, 0, .1);
  			border-radius: 12px;
  			overflow: hidden;
  			transition: all .2s linear;
		}

		.card:hover 
		{
  			box-shadow: 2px 8px 45px rgba(0, 0, 0, .15);
  			transform: translate3D(0, -2px, 0);
		}

		@media screen and (min-width: 600px) 
		{
  			.card 
  			{
    			flex: 1 1 calc(50% - 2rem);
  			}
		}

		@media screen and (min-width: 900px) 
		{
  			.card 
  			{
    			flex: 1 1 calc(33% - 2rem);
  			}
		}

		.card:nth-child(2n) h1 
		{
  			background-image: linear-gradient(120deg, #84fab0 0%, #8fd3f4 100%);
		}
	
		.card:nth-child(4n) h1 
		{
  			background-image: linear-gradient(120deg, #ff9a9e 0%, #fecfef 100%);
		}

		.card:nth-child(5n) h1 
		{
  			background-image: linear-gradient(120deg, #ffc3a0 0%, #ffafbd 100%);
		}
  	</style>
  	
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <title>EVENTS</title>
    

    <link href="https://fonts.googleapis.com/css?family=Dosis:400,700" rel="stylesheet" />
    <button id="createEvent">Create an Event</button>
   
  </head>

  <body>
  
    <div id="root"></div>
    <script>
    document.getElementById("createEvent").onclick = function () {
        window.location = "http://localhost:8080/events/createEventForm.jsp";
    };
    
    const app = document.getElementById('root')

    const container = document.createElement('div')
    container.setAttribute('class', 'container')


    app.appendChild(container)
	

    /*function myFunction() {
    	//window.alert("Reaching in function");
	}*/
    
    var request = new XMLHttpRequest()
    request.open('GET', 'http://localhost:8080/events/webapi/events', true)
    request.onload = function() {
    	// Begin accessing JSON data here
    	//window.alert("Reaching in function");
    	var data = JSON.parse(this.response)
    	if (request.status >= 200 && request.status < 400) {
        	data.forEach(event =>{
   			     
   	        	const card = document.createElement('div')
   	      		card.setAttribute('class', 'card')
   	      		card.setAttribute('id', event.eventno)
	    	      
    	      	const h1 = document.createElement('h1')
    	      	h1.textContent = event.title
    	      	h1.onmouseover=function(){
    	    	  	h1.style.cursor = "pointer";
    	    	  	h1.style.textDecoration="underline"
      	      	};
    	      	h1.onmouseout=function(){
    	    		h1.style.textDecoration="none"  
    	      	};
			
    	      	const h2 = document.createElement('h2')    	
        	  	h2.textContent = event.location
 
    			h1.onclick=function(){
	    			//window.alert("onCLick");
    			  	var f = card.getAttribute("id");
    			  	//String url="http://139.59.70.47:8080/lazeez/viewUserDetails.jsp?id="+f;
    			  	window.location="http://localhost:8080/events/viewEventDetails.jsp?eventno="+f+"&title="+event.title+"&location="+event.location+"&organizer="+event.organizer+"&mobile="+event.mobile+"&email="+event.email+"&entryfee="+event.entryfee+"&prize="+event.prize+"&eventdate="+event.eventdate+"&startat="+event.startat+"&endat="+event.endat+"&totaldays="+event.totaldays;
    			  	//window.alert("View Details Button Pressed"+f);
    		  	};
        	  
    		  	var btnUpdate = document.createElement("BUTTON");
        	  	var u = document.createTextNode("Update");
        	  	btnUpdate.appendChild(u);
        	  	btnUpdate.onclick=function(){
        		  	window.location="http://localhost:8080/events/eventUpdateForm.jsp?eventno="+event.eventno+"&title="+event.title+"&location="+event.location+"&organizer="+event.organizer+"&mobile="+event.mobile+"&email="+event.email+"&entryfee="+event.entryfee+"&prize="+event.prize+"&eventdate="+event.eventdate+"&startat="+event.startat+"&endat="+event.endat+"&totaldays="+event.totaldays;
        	  	};
        	  
        
        	  	var btnIntrstd = document.createElement("BUTTON");
        	  	var w = document.createTextNode("Interested");
        	  	btnIntrstd.appendChild(w);
        	  	btnIntrstd.onclick=function(){
        	  		window.location="http://localhost:8080/events/interested.jsp?eventno="+event.eventno+"&title="+event.title;
        	  	};
        	  
    	      container.appendChild(card)
    	      card.appendChild(h1)
    		  card.appendChild(h2)
    		  card.appendChild(btnUpdate)
    		  
    		  card.appendChild(btnIntrstd)
    	    })
    	  } else {
    	    const errorMessage = document.createElement('marquee')
    	    errorMessage.textContent = `Gah, it's not working!`
    	    app.appendChild(errorMessage)
    	  }
    }
    request.send();
    </script>
    
    
  </body>
</html>

