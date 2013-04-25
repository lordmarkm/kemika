<#import "/spring.ftl" as spring />
<#import "./templates/navbar.ftl" as navbar />
<#import "./templates/footer.ftl" as footer />

<!DOCTYPE html>
<html>

<head>
<link href="<@spring.url '/css/default.css' />" rel="stylesheet">
</head>

<body>

  <@navbar.navbar />
  
  <div id="wrap">
  <div class="clearfix"></div>
  
  <div id="contact" class="container">
      <h1>Contact Us</h1>
      
      <div class="row">
          <div class="span1"></div>
          <div class="span5 well">
              <p>You can visit us at:</p>
              <p>Rm 201, 193 Rios Bldg.,
              <br>Dona Soledad Ext., Better Living,
              <br>Paranaque City, Philippines 1700</p>
          </div>
      </div>
      <div class="row">
          <div class="span1"></div>
          <div class="span5 well"> 
              <p>For any questions, please contact us at the following numbers:</p>
              <p>Telephone:
              <br>(02)994 1052, (02) 585 5631, 822 4490
              <br>Fax:
              <br>(02) 847 0623 822 4440 local 01</p>
          </div>
          <div class="span5 well">              
              <p>Or through email:</p>
              <p><a href="mailto:kemikainternationale@gmail.com">kemikainternationale@gmail.com</a></p>
          </div>
      </div>
  </div>
  
</body>

</html>