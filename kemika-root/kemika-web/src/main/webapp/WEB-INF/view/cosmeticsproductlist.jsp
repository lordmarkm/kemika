<#import "/spring.ftl" as spring />
<#import "./templates/navbar.ftl" as navbar />
<#import "./templates/footer.ftl" as footer />
<#import "./templates/includes.ftl" as includes />

<!DOCTYPE html>
<html>

<head>
<link href="<@spring.url '/css/default.css' />" rel="stylesheet">
</head>

<body>

  <div id="wrap">
  <@navbar.navbar />
  
  <div class="clearfix"></div>
  
  <div class="container">
      <h1>Cosmetic Product Line</h1>
      <div class="span5 well">
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

  
</body>

</html>