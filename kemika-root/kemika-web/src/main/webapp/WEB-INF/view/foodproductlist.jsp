<#import "/spring.ftl" as spring />
<#import "./templates/navbar.ftl" as navbar />
<#import "./templates/footer.ftl" as footer />
<#import "./templates/includes.ftl" as includes />

<!DOCTYPE html>
<html>

<head>
  <@includes.universals />
<body>

  <@navbar.navbar />
  
  <div id="wrap">
  <div class="clearfix"></div>
  
  <div class="container">
           <h1>Food Product Line</h1>
           <div class="span5 well">
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

</body>

</html>