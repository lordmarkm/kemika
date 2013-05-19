<#import "/spring.ftl" as spring />
<#import "./templates/navbar.ftl" as navbar />
<#import "./templates/footer.ftl" as footer />
<#import "./templates/includes.ftl" as includes />

<!DOCTYPE html>
<html>

<head>
  <@includes.universals />
</head>

<body>

  <div id="wrap">
  <@navbar.navbar />
  
  <div class="clearfix"></div>
  
  <div class="container">
      <h1>Veterinary Product Line</h1>
      <div class="span5 well">
              <ul>
                <li>Feed Mixes</li>
                <li>Amino Acids</li>
                <li>Antibiotics</li>
                <li>Growth Booster</li>
                <li>Feed Additives</li>
              </ul>
          </div>
      </div>
  </div>

  
</body>

</html>