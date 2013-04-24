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

  <div id="wrap">
  <@navbar.navbar />
  
  <div class="clearfix"></div>
  
  <div class="container">        <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Links and Stuff</a>
          <ul class="dropdown-menu" role="menu" aria-labelledby="dLabel">
            <li><a tabindex="-1" href="http://www.helenachemical.com/Pages/home.aspx">Helena</a></li>
            <li><a tabindex="-1" href="http://www.eastman.com/Pages/Home.aspx">Eastman</a></li>
          </ul></li>
      <div class="row">
          <div class="span1">
              Cosmetic Products:
          </div>
           <div class="span3">
              <ul>
              	<li>Botanical Extracts</li>
              	<li>Fragrances</li>
              	<li>Essential Oils</li>
              	<li>Soap Bases</li>
              	<li>Dry Botanicals</li>
              	<li>Oleoresins</li>
              </ul>
          </div>
      </div>
  </div>
  </div>
  
  <@navbar.footer />
  
</body>

</html>