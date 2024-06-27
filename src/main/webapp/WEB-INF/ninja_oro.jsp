<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList" %>
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Juego</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
  	<link rel="stylesheet" href="styles.css">
  </head>
  <body>
  
  <style>
  
		.formulario{
			padding-left: 50px; 
		}
		
		.counter{
			padding-top: 40px;
			padding-left: 50px;
			padding-bottom: 25px;
			color: white;
			text-align: center;
			font-weight: bold;
		
		}
		.activ{
		padding-top: 40px;
		color: white;
		text-align: center;
		font-weight: bold;
		
		}
		
		body{
			background-image: url("https://d.newsweek.com/en/full/2257599/ancient-gold-coins-falling.webp?w=2500&f=216ae553dab3379c32bbffc149b5cdcf");
			color: white
		}
		
		.activities{
		border-style: dotted;
		border-color: white;
		background-color: rgb(170, 141, 10);
			
		}
		.card{
			background-color:rgb(170, 141, 10);
			border-style: dotted;
			border-color: white;
		}
		.input{
			background-color:rgb(170, 141, 10);
			border-style: dotted;
			border-color: white;
		}
		.boton{
			background-color:rgb(218, 214, 28);
		}
  
  
  </style>
  <form action="/Game/NinjaOro" method="post">
  <h2 class="counter">Your gold:
  <input class="input" type="text" name="oro" value="<%=session.getAttribute("oro") %>"> 
  </h2>
  </form>
     <div class="row">
        <div class="col-3 formulario">
            <div class="card" style="width: 18rem;">
                <form action="/Game/NinjaOro" method="post">
                <img src="https://www.pockettactics.com/wp-content/sites/pockettactics/2023/08/farm-games--550x309.jpg" class="card-img-top" alt="harvest">
                <div class="card-body">
                  <h5 class="card-title">Farm</h5>
                  <p class="card-text">(Earns 10-20 golds)</p>
                  <input type= "hidden" name="lugar" value="farm">
                  <input class="boton" type="submit" value="Find Gold!"> 
                </div>
                </form>
              </div>      
        </div>
        <div class="col-3 formulario">
	        <div class="card" style="width: 18rem;">
	                <form action="/Game/NinjaOro" method="post">
	                <img src="https://cdna.artstation.com/p/assets/images/images/010/178/024/large/michal-wawruch-cave-01.jpg?1522982173" class="card-img-top" alt="cave">
	                <div class="card-body">
	                  <h5 class="card-title">Cave</h5>
	                  <p class="card-text">(Earns 5-10 golds)</p>
	                  <input type= "hidden" name="lugar" value="cave">
	                  <input class="boton" type="submit" value="Find Gold!"> 
	                </div>
	                </form>
	          </div> 
        </div>
        <div class="col-3 formulario">
	        <div class="card" style="width: 18rem;">
	                <form action="/Game/NinjaOro" method="post">
	                <img src="https://images.nightcafe.studio/jobs/95Zd9PWOK4umszof6Hpl/95Zd9PWOK4umszof6Hpl--4--hgkk1.jpg?tr=w-1600,c-at_max" class="card-img-top" alt="house">
	                <div class="card-body">
	                  <h5 class="card-title">House</h5>
	                  <p class="card-text">(Earns 2-5 golds)</p>
	                  <input type= "hidden" name="lugar" value="house">
	                  <input class="boton" type="submit" value="Find Gold!"> 
	                </div>
	                </form>
	          </div>
        </div>
        <div class="col-3 formulario">
	        <div class="card" style="width: 18rem;">
	                <form action="/Game/NinjaOro" method="post">
	                <img src="https://www.guide-du-paysbasque.com/_bibli/annonces/4013/hd/casino-kursaal-23-02.jpg?v=ficheAnnonce&width=394&height=270&pixelRatio=1.0000" class="card-img-top" alt="casino">
	                <div class="card-body">
	                  <h5 class="card-title">Casino</h5>
	                  <p class="card-text">(Earns/Takes 0-50 golds)</p>
	                  <input type= "hidden" name="lugar" value="casino">
	                  <input class="boton" type="submit" value="Find Gold!"> 
	                </div>
	                </form>
	         </div>
        </div>

    </div>
    <h2 class="activ">Activities </h2>
    <div class="row mt-3">
     <div class="col-6 offset-3">
        <div class="p-4 rounded activities">
        	 <%  for (String mensajes : (ArrayList<String>) session.getAttribute("mensajes")){%>
         <h5 id="mensaje" class="text-center"><%=mensajes%></h5>
         <%} %>
       </div>
    </div>
 </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
  </body>
</html>