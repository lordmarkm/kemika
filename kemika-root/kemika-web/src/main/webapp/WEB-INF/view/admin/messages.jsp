<#import "/spring.ftl" as spring />
<#import "../templates/navbar.ftl" as navbar />
<#import "../templates/includes.ftl" as includes />
<#import "../templates/footer.ftl" as footer />

<!DOCTYPE html>
<html>

<head>
  <@includes.universals />
  <link href="<@spring.url '/css/admin/admin.css' />" rel="stylesheet" />
  <link href="<@spring.url '/css/admin/messages.css' />" rel="stylesheet" />
  <script src="<@spring.url '/javascript/admin/admin.js' />" ></script>
  <title>Messages</title>
</head>

<body>
  <@navbar.navbar />
  
  <div class="clearfix"></div>
  
  <div class="container">
  <h1>Admin dashboard</h1>
  
  <ul>
    <li><a href="<@spring.url '/admin/newcategoryform' />" >Add category</a></li> 
    <li><a href="<@spring.url '/admin/newproductform' />" >Add product</a></li>
    <li><a href="<@spring.url '/admin' />" >Manage products</a>
  </ul>
  
  <a class="btn" href="<@spring.url '/admin/messages/add' />">Add Message</a>
  <table id="messages-table" class="table table-hover">
    <thead>
      <th>Key</th>
      <th>Description</th>
      <th>Message</th>
      <th>&nbsp;</th>
    </thead>
    <tbody>
    <#list messages as message>
    <tr>
      <td>${message.key }</td>
      <td>${message.description }</td>
      <td class="message">${message.message }</td>
      <td><a class="btn" href="<@spring.url '/admin/messages/edit/${message.id }' />">Edit</a></td>
      <td><a class="btn" href="<@spring.url '/admin/messages/delete/${message.id }' />">Delete</a></td>
    </tr>
    </#list>
    </tbody>
  </table>
  
  </div>
  
</body>

</html>