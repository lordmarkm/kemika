<#import "/spring.ftl" as spring />
<#import "./templates/navbar.ftl" as navbar />
<#import "./templates/includes.ftl" as includes />
<#import "./templates/footer.ftl" as footer />

<!DOCTYPE html>
<html>

<head>
  <@includes.universals />
  <link href="<@spring.url '/css/admin/admin.css' />" rel="stylesheet">
  <script src="<@spring.url '/javascript/admin/admin.js' />" ></script>
  
  <title>Admin</title>
</head>

<body>
  <@navbar.navbar />
  
  <div class="clearfix"></div>
  
  <div class="container">
  <h1>Admin dashboard</h1>
  
  <ul>
    <li><a href="<@spring.url '/admin/newcategoryform' />" >Add category</a></li> 
    <li><a href="<@spring.url '/admin/newproductform' />" >Add product</a></li>
  </ul>
  
  <dl>
    <#list categories as category>
    
    <dt class="category-name pd2">
      ${category.name }
      <div class="hide category-options">
        <a href="<@spring.url '/admin/category/edit/${category.id}' /> ">Edit</a>
        <a href="javascript:;">Delete</a>
      </div>
    </dt>
    
    <dd class="category-description">${category.description }</dd>
    <#if (category.products?size > 0)>
      <ol style="margin-left: 60px;">
      <#list category.products as product>
        <li><b>${product.name }</b> - ${product.description }</li>
      </#list>
      </ol>
    </#if>
    </#list>
  </dl>
  
  </div>
  
</body>

</html>