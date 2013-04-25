<#import "/spring.ftl" as spring />
<#import "./templates/navbar.ftl" as navbar />
<#import "./templates/footer.ftl" as footer />

<!DOCTYPE html>
<html>

<head>
<link href="<@spring.url '/css/default.css' />" rel="stylesheet">
</head>

<body>
  <div id="wrap">
  <@navbar.navbar />
  <div class="clearfix"></div>
  
  <div class="row text-center">
      
  </div>
 
  <@navbar.footer />
</body>

</html>