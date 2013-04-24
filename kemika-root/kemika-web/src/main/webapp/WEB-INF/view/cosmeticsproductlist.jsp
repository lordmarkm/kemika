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
  
  <table id="tables" border=1 cellpadding=2>
  	<tr bgcolor="CDBDEF">
  		<td colspan=2 class="text-center">Cosmetic Products</td>
  	</tr>
  	<tr>
  		<td rowspan=6>Product Types:</td>
  		<td>Botanical Extracts</td>
  	</tr>
  	<tr>
  		<td>Fragrances</td>
  	</tr>
  	  	<tr>
  		<td>Essential Oils</td>
  	</tr>
  	</tr>
  	  	<tr>
  		<td>Soap Bases</td>
  	</tr>
  	</tr>
  	  	<tr>
  		<td>Dry Botanicals</td>
  	</tr>  	
  	</tr>
  	  	<tr>
  		<td>Oleoresins</td>
  	</tr>
  </table>
  
  <!-- 
  <div class="container">Dry Botanicals
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
   -->
  
  <@navbar.footer />
  
</body>

</html>