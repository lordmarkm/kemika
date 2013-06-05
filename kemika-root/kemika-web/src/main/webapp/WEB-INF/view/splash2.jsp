<#import "/spring.ftl" as spring />
<#import "./templates/navbar.ftl" as navbar />
<#import "./templates/includes.ftl" as includes />
<#import "./templates/tools.ftl" as tools />

<!DOCTYPE html>
<html lang="en">
  
<head>
  <@includes.universals />

  <title>Kemika Internationale</title>
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
  <meta name="viewport" content="width=device-width, initial-scale=1.0"> 
  <meta name="description" content="Kemika Internationale by Mark and Gemgem" />
  <meta name="keywords" content="kemika, chemicals, philippines" />
  <meta name="author" content="Mark Martinez" />
  
  <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.6.2/jquery.min.js"></script>
  <script type="text/javascript" src="<@spring.url '/libs/CircularContentCarousel/js/jquery.easing.1.3.js' />"></script>
  <!-- the jScrollPane script -->
  <script type="text/javascript" src="<@spring.url '/libs/CircularContentCarousel/js/jquery.mousewheel.js' />"></script>
  <script type="text/javascript" src="<@spring.url '/libs/CircularContentCarousel/js/jquery.contentcarousel.js' />"></script>
</head>

<body>
  <@navbar.navbar />
  <div class="container">
    <div class="span12">
      <div class="content">
        <div id="ca-container" class="ca-container">
          <div class="ca-wrapper">
            <#list categories as category>
            <div class="ca-item">
              <div class="ca-item-main">
                <#assign catImgUrl><@spring.url '/image/category/${category.id }' /></#assign>
                <div class="ca-icon" style="background-image: url('${catImgUrl}');"></div>
                <h3>${category.name }</h3>
                <h4>
                  <span class="ca-quote">&ldquo;</span>
                  <span>${category.description }</span>
                </h4>
                <a href="#" class="ca-more">more...</a>
              </div>
              <div class="ca-content-wrapper">
                <div class="ca-content">
                  <h6>${category.name }</h6>
                  <a href="#" class="ca-close">close</a>
                  <div class="ca-content-text">
                    <p><@tools.nl2br string=category.description /></p>
                    
                    <#if category.products?has_content>
                    <strong>Products</strong>
                    <ol class="preview-products">
                      <#list category.products as product>
                      <li><a href="<@spring.url '/product/${product.urlFragment }' />">${product.name}</a></li>
                      </#list>
                    </ol>
                    </#if>
                    
                  </div>
                  <ul>
                    <li><a href="<@spring.url '/category/${category.urlFragment }' />">Read more</a></li>
                  </ul>
                </div>
              </div>
            </div>
          </#list>
          </div>
        </div>
        <h5>Site mockup by Mark and Yvonne Martinez</h5>
        <div class="translucent-bg-white"></div>
      </div>
    </div>
  </div>
</body>
    
<script type="text/javascript">
$(function(){
	$('#ca-container').contentcarousel();
});
</script>   
</html>
