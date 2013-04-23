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
    <div class="container">
      <div>Fuck you</div>
      <div><@spring.message 'fuck.you' /></div>
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