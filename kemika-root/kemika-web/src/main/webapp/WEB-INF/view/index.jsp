<#import "/spring.ftl" as spring />

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
  	<div class="row">
  		<div class="span12">experimenting with rows and columns and stuff</div>
  	</div>
 
  	<div id ="VMmodal" class="modal hide fade">
  		<div class="modal-header">
  			<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
  			<h3>Vision and Mission</h3>
  		</div>
  		<div class="modal-body">
  			<p>Something something something...</p>
  		</div>
  		<div class="modal-footer">
  			<a href="#" class="btn">Close</a>
  			<a href="#" class="btn btn-primary">Save</a>
  		</div>
  	</div>
  	<div id ="CVmodal" class="modal hide fade">
  		<div class="modal-header">
  			<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
  			<h3>Core Values</h3>
  		</div>
  		<div class="modal-body">
  			<p>Dot dot dot...</p>
  		</div>
  		<div class="modal-footer">
  			<a href="#" class="btn">Close</a>
  			<a href="#" class="btn btn-primary">Save</a>
  		</div>
  	</div>
  	<div id ="Histomodal" class="modal hide fade">
  		<div class="modal-header">
  			<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
  			<h3>History</h3>
  		</div>
  		<div class="modal-body">
  			<p>Once upon a time...</p>
  		</div>
  		<div class="modal-footer">
  			<a href="#" class="btn">Close</a>
  			<a href="#" class="btn btn-primary">Save</a>
  		</div>
  	</div>
  	<div id ="Contactmodal" class="modal hide fade">
  		<div class="modal-header">
  			<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
  			<h3>Contact Us</h3>
  		</div>
  		<div class="modal-body">
  			<p>some contact details...</p>
  		</div>
  		<div class="modal-footer">
  			<a href="#" class="btn">Close</a>
  			<a href="#" class="btn btn-primary">Save</a>
  		</div>
  	</div>

    <div class="row">
      	<div class="span12"><p class="text-center">TOP ROW THING (12 column span) </p>
    	</div>
    </div>
    
    <div class="row">
	    <div class="dropdown span1.5">
	    	<a class="dropdown-toggle" data-toggle="dropdown" href="#">Links and Stuff</a>
	    	<ul class="dropdown-menu" role="menu" aria-labelledby="dLabel">
	    		<li><a tabindex="-1" href="http://www.helenachemical.com/Pages/home.aspx">Helena</a></li>
	    		<li><a tabindex="-1" href="http://www.eastman.com/Pages/Home.aspx">Eastman</a></li>
	    	</ul>
	    </div>
	    <div class="dropdown span1.5">
	    	<a class="dropdown-toggle" data-toggle="dropdown" href="#">About Kemika</a>
	    	<ul class="dropdown-menu" role="menu" aria-labelledby="dLabel">
	    		<li><a tabindex="-1" href="#VMmodal" role="button" data-toggle="modal">Vision and Mission</a></li>
	    		<li><a tabindex="-1" href="#CVmodal" role="button" data-toggle="modal">Core Values</a></li>
	    		<li><a tabindex="-1" href="#Histomodal" role="button" data-toggle="modal">History</a></li>
	    	</ul>
	    </div>
	    <div class="span1.5"><a href="#Contactmodal" role="button" data-toggle="modal">Contact Us</a></div>
    </div>
        
    <div style="height: 1000px;"></div>
    <div id="push"></div>
  </div>
  <div id="footer">
    <div class="container">
      Footer lol
      
      <div class="pull-right">
        <div class="btn">Wat</div>
      </div>
    </div>
  </div>
</body>

</html>