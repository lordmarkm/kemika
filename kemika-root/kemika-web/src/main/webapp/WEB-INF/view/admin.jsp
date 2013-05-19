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

<script>
  window.urls = {
    uploadimg: "<@spring.url '/admin/uploadimg/' />"
  }
</script>

<body>
  <@navbar.navbar />
  
  <div class="clearfix"></div>
  
  <div class="container">
  <h1>Admin dashboard</h1>
  
  <ul>
    <li><a href="<@spring.url '/admin/newcategoryform' />" >Add category</a></li> 
    <li><a href="<@spring.url '/admin/newproductform' />" >Add product</a></li>
  </ul>
  
  <table>
    <#list categories as category>
    <tr>
      <td valign="top">
        <div class="edit-img-container pointer" cat-id="${category.id }">
          <img class="kemika-thumb mt20" src="<@spring.url '/image/category/${category.id}' />" />
        </div>
      </td>
      <td>
        <dl>
          <dt class="category-name pd2">
            <h3 class="inline-block">${category.name }</h3>
            <div class="hide category-options">
              <a href="<@spring.url '/admin/category/edit/${category.id}' /> ">Edit</a>
              <a href="<@spring.url '/admin/category/delete/${category.id }' />">Delete</a>
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
        </dl>
      </td>
    </tr>
    </#list>
  </table>
  
  </div>
  
</body>

</html>