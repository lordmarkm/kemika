<#import "/spring.ftl" as spring />

<!DOCTYPE html>
<html>

<head>

<link href="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.1/css/bootstrap-combined.min.css" rel="stylesheet">
<link href="<@spring.url '/css/default.css' />" rel="stylesheet">

<script src="//ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js"></script>

<!-- 
<script src="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.1/js/bootstrap.min.js"></script>
 -->
 
<script src="<@spring.url '/javascript/cloud-carousel/cloud-carousel.1.0.5.min.js' />"></script>

</head>

<body>

  <div style="width: 600px; height: 300px;">
    <div id="carousel">
      <img class="cloudcarousel" src="<@spring.url '/images/splash-carousel/cosmetics.png' />" alt="Cosmetics" title="Cosmetics" />
      <img class="cloudcarousel" src="<@spring.url '/images/splash-carousel/food.png' />" alt="Food" title="Food" />
      <img class="cloudcarousel" src="<@spring.url '/images/splash-carousel/industrial.png' />" alt="Industrial" title="Industrial" />
      <img class="cloudcarousel" src="<@spring.url '/images/splash-carousel/pharma.png' />" alt="Pharmaceutical" title="Pharmaceutical" />
      <img class="cloudcarousel" src="<@spring.url '/images/splash-carousel/veterinary.png' />" alt="Veterinary" title="Veterinary" />
    </div>
  </div>
  <p id="carousel-title-text"></p>
  <p id="carousel-alt-text"></p>

</body>

<script>
$(function(){
	$('#carousel').CloudCarousel({
		xPos: 128,
		yPos: 32,
		altBox: $('#carousel-alt-text'),
		titleBox: $('#carousel-title-text')
	});
});
</script>

</html>