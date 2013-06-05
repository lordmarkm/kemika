<#import "/spring.ftl" as spring />
<#import "../templates/navbar.ftl" as navbar />
<#import "../templates/includes.ftl" as includes />
<#import "../templates/tools.ftl" as tools />

<!DOCTYPE html>
<html>

<head>
  <@includes.universals />
  <link href="<@spring.url '/css/admin/admin.css' />" rel="stylesheet">
  <script src="<@spring.url '/javascript/admin/admin.js' />" ></script>
  
  <title>Admin</title>
</head>

<script>
  window.urls = {
    uploadimg: "<@spring.url '/image/upload/' />"
  }
</script>

<body>
  <@navbar.navbar />
  <div class="container">
    <div class="span12">
      <div class="content">
        <h1>Admin dashboard</h1>
        
        <div class="btn-group">
          <a class="btn" href="<@spring.url '/admin/newcategoryform' />" >Add category</a> 
          <a class="btn" href="<@spring.url '/admin/newproductform' />" >Add product</a>
          <a class="btn btn-primary" href="<@spring.url '/admin/messages' />" >Manage messages</a>
        </div>
        
        <h3>Categories and Products</h3>      
        <table class="table table-hover">
          <#list categories as category>
          <tr>
            <td valign="top" width="10%">
              <div class="edit-img-container pointer" entity-type="category" cat-id="${category.id }">
                <img class="kemika-thumb mt20" src="<@spring.url '/image/category/${category.id}' />" />
                <div class="center">Click to change</div>
              </div>
            </td>
            <td>
              <dl>
                <dt class="category-name pd2">
                  <h3 class="inline-block">
                    <a href="<@spring.url '/category/${category.urlFragment }' />">${category.name }</a>
                  </h3>
                  <div class="btn-group category-options pull-right">
                    <a class="btn" href="<@spring.url '/admin/category/edit/${category.id}' /> ">Edit</a>
                    <a class="btn" href="<@spring.url '/admin/category/delete/${category.id }' />">Delete</a>
                  </div>
                </dt>
                <dd class="category-description"><@tools.nl2br string=category.description /></dd>
                <#if (category.products?size > 0)>
                  <div class="mt20">
                    <strong style="margin-left: 30px;">Products</strong>
                    <ol style="margin-left: 60px; list-style-type: decimal;">
                    <#list category.products as product>
                      <li>
                        <a href="<@spring.url '/product/${product.urlFragment }' />"><strong>${product.name }</strong></a>
                        <a class="btn" href="<@spring.url '/admin/product/edit/${product.id}' /> ">Edit</a>
                        <a class="btn" href="<@spring.url '/admin/product/delete/${product.id }' />">Delete</a>
                        <p><@tools.nl2br string=product.description />
                      </li>
                    </#list>
                    </ol>
                  </div>
                </#if>
              </dl>
            </td>
          </tr>
          </#list>
        </table>
      </div>
      <div class="translucent-bg-white"></div>
    </div>
  </div>
  
</body>

</html>