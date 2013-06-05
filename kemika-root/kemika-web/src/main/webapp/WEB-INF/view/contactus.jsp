<#import "/spring.ftl" as spring />
<#import "./templates/navbar.ftl" as navbar />
<#import "./templates/tools.ftl" as footer />
<#import "./templates/includes.ftl" as includes />

<!DOCTYPE html>
<html>

<head>
  <@includes.universals />
  <link href="<@spring.url '/css/admin/admin.css' />" rel="stylesheet">
  <script src="<@spring.url '/javascript/admin/admin.js' />" ></script>

  <title>Contact Us</title>
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