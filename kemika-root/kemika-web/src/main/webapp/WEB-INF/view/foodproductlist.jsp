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
  <@navbar.navbar />
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