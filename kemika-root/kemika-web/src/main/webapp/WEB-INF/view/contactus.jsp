<#import "/spring.ftl" as spring />
<#import "./navbar.ftl" as navbar />

<!DOCTYPE html>
<html>

<head>
<link href="<@spring.url '/css/default.css' />" rel="stylesheet">
</head>

<body>

  <@navbar.navbar />
  
  <div id="wrap">
  <div class="clearfix"></div>
  
  <div class="container">
      <div class="row">
          <div class="span2"></div>
          <div class="span3">
              <p>For any questions, please contact us at the following numbers:</p>
              <p>Telephone:
              <br>(02)994 1052, (02) 585 5631, 822 4490
              <br>Fax:
              <br>(02) 847 0623 822 4440 local 01</p>
              <p>Or through email:
              <br>kemikainternationale@gmail.com</p>
          </div>
      </div>
  </div>

  <@navbar.footer />
  
</body>

</html>