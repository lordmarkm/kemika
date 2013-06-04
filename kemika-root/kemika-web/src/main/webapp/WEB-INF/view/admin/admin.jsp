<#import "/spring.ftl" as spring />
<#import "../templates/navbar.ftl" as navbar />
<#import "../templates/includes.ftl" as includes />
<#import "../templates/footer.ftl" as footer />

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
                  <div class="category-options inline-block">
                    <a href="<@spring.url '/admin/category/edit/${category.id}' /> ">Edit</a>
                    <a href="<@spring.url '/admin/category/delete/${category.id }' />">Delete</a>
                  </div>
                </dt>
                <dd class="category-description">${category.description }</dd>
                <#if (category.products?size > 0)>
                  <strong style="margin-left: 30px;">Products</strong>
                  <ol style="margin-left: 60px; list-style-type: decimal;">
                  <#list category.products as product>
                    <li><a href="<@spring.url '/product/${product.urlFragment }' />"><strong>${product.name }</strong></a> - ${product.description }</li>
                  </#list>
                  </ol>
                </#if>
              </dl>
            </td>
          </tr>
          </#list>
        </table>
      </div>
      <div class="translucent-bg-white">
      </div>
    </div>
  </div>
  
</body>

</html>