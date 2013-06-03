<#import "/spring.ftl" as spring />
<#import "./templates/navbar.ftl" as navbar />
<#import "./templates/includes.ftl" as includes />

<!DOCTYPE html>
<html lang="en">
  
<head>
  <@includes.universals />
  <title>${category.name }</title>
</head>

<body>
  <@navbar.navbar />
  
  <div class="container">
    <div class="span12">
      <h1>${category.name }</h1>
      <p>${category.description }
      
      <#if !category.products?has_content>
      <ol>
      <#list category.products as product>
        <li>${product.name }
      </#list>
      </ol>
      </#if>
    </div>
  </div>

</body>

</html>