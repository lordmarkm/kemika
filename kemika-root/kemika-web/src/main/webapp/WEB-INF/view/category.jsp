<#import "/spring.ftl" as spring />
<#import "./templates/navbar.ftl" as navbar />
<#import "./templates/includes.ftl" as includes />
<#import "./templates/tools.ftl" as tools />

<!DOCTYPE html>
<html lang="en">
  
<head>
  <@includes.universals />
  <title>${category.name }</title>
</head>

<body>
  <@navbar.navbar />
  
  <div class="container">
    <div class="span12" style="position: relative;">
      <div class="content">
        <div>
          <h1>${category.name }</h1>
          
          <h3>Description</h3>
          <p><@tools.nl2br string=category.description />
          
          <#if category.products?has_content>
          <h3>Products</h3>
          <table class="table" title="Products">
            <#list category.products as product>
            <tr>
              <td class="w15"><strong><a href="<@spring.url '/product/${product.urlFragment }' />">${product.name }</strong></a></td>
              <td><@tools.nl2br string=product.description /></td>
            </tr>
            </#list>
          </table>
          </#if>
        </div>
      </div>
      <#if category.image??>
      <#assign catImgUrl><@spring.url '/image/category/${category.id }' /></#assign>
      <div style="background-image: url('${catImgUrl}');" class="translucent-bg">
      </div>
      <#else>
      <div class="translucent-bg-white">
      </div>
      </#if>
    </div>
  </div>

</body>

</html>