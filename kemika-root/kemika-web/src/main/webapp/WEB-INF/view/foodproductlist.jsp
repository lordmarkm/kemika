<#import "/spring.ftl" as spring />
<#import "./navbar.ftl" as navbar />

<!DOCTYPE html>
<html>

<head>
<link href="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.1/css/bootstrap-combined.min.css" rel="stylesheet">
<link href="<@spring.url '/css/default.css' />" rel="stylesheet">

<script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<script src="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.1/js/bootstrap.min.js"></script>
</head>

<body>

  <@navbar.navbar />
  
  <div id="wrap">
  <div class="clearfix"></div>
  
  <div class="container">
      <div class="row">
          <div class="span1">
              Food Products
          </div>
           <div class="span3">
              <ul>
              	<li>Commodities</li>
              	<li>Flavors</li>
              	<li>Natural Colors</li>
              	<li>Sweeteners</li>
              	<li>Hydrocolloids</li>
              	<li>Preservatives</li>
              	<li>Food Grade Lubricants</li>
              </ul>
          </div>
      </div>
  </div>
  </div>
  
  <@navbar.footer />
  
</body>

</html>