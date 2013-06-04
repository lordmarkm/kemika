<#import "/spring.ftl" as spring />
<#import "./templates/navbar.ftl" as navbar />
<#import "./templates/includes.ftl" as includes />

<!DOCTYPE html>
<html lang="en">
  
<head>
  <@includes.universals />
  <title>${product.name }</title>
</head>

<body>
  <@navbar.navbar />
  
  <div class="container">
    <div class="span12" style="position: relative;">
      <div class="content">
        <div>
          <h1>${product.name }</h1>
          
          <#if product.category??>
          <h3>Parent category</h3>
          <p>${product.category.name }
          </#if>
          
          <h3>Description</h3>
          <p>${product.description }
        </div>
      </div>
      <#if product.image??>
      <#assign prodImgUrl><@spring.url '/image/product/${product.id }' /></#assign>
      <div style="background-image: url('${prodImgUrl}');" class="translucent-bg">
      </div>
      <#else>
      <div class="translucent-bg-white">
      </div>
      </#if>
    </div>
  </div>

</body>

</html>