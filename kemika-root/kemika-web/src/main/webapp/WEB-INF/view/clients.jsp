<#import "/spring.ftl" as spring />
<#import "./templates/navbar.ftl" as navbar />
<#import "./templates/footer.ftl" as footer />

<!DOCTYPE html>
<html>

<head>
<title>Clients</title>
<link rel="shortcut icon" href="<@spring.url '/images/favicon.ico' />"> 
<link href="<@spring.url '/css/default.css' />" rel="stylesheet" />
<link href="<@spring.url '/css/clients.css' />" rel="stylesheet" />
</head>

<body>
  <@navbar.navbar />
  
  <div class="clearfix"></div>
	
  <div class="container-fluid">	  
    <h1>Clients</h1>
    
    <div class="span5 well" id="splash">
    	<div><img class="well-title" src="<@spring.url '/images/clients/splash_corp_logo.png' />" /></div>
    	<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent interdum, 
    	ligula at tempor interdum, velit tortor vestibulum lectus, non semper sapien nunc 
    	quis mi. Sed dictum pretium velit, eget egestas justo convallis eget. Praesent 
    	porta, mauris eu tincidunt aliquam, neque nunc porta est, in faucibus nibh tortor
    	nec ipsum. Praesent consequat placerat suscipit. Class aptent taciti sociosqu ad 
    	litora torquent per.
    </div>
    
    <div class="span5 well">
    	<div><img class="well-title" src="<@spring.url '/images/clients/unilab.png' />" /></div>
    	<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent interdum, 
    	ligula at tempor interdum, velit tortor vestibulum lectus, non semper sapien nunc 
    	quis mi. Sed dictum pretium velit.
    </div>
    
    <div class="clearfix"></div>
    
    <div class="span5 well">
    	<div><img class="well-title" src="<@spring.url '/images/clients/san-miguel-corp.jpg' />" /></div>
    	<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent interdum, 
    	ligula at tempor interdum, velit tortor vestibulum lectus, non semper sapien nunc 
    	quis mi. Sed dictum pretium velit.
    </div>
    
    <div class="span5 well" id="splash">
    	<div><img class="well-title" src="<@spring.url '/images/clients/pm.jpg' />" /></div>
    	<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent interdum, 
    	ligula at tempor interdum, velit tortor vestibulum lectus, non semper sapien nunc 
    	quis mi. Sed dictum pretium velit, eget egestas justo convallis eget. Praesent 
    	porta, mauris eu tincidunt aliquam, neque nunc porta est, in faucibus nibh tortor
    	nec ipsum. Praesent consequat placerat suscipit. Class aptent taciti sociosqu ad 
    	litora torquent per.
    </div>
    
    <div class="clearfix"></div>
    
    <div class="span5 well">
    	<div><img class="well-title" src="<@spring.url '/images/clients/wyethlogo.gif' />" /></div>
    	<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent interdum, 
    	ligula at tempor interdum, velit tortor vestibulum lectus, non semper sapien nunc 
    	quis mi. Sed dictum pretium velit.
    </div>   
    
  </div>
</body>

</html>