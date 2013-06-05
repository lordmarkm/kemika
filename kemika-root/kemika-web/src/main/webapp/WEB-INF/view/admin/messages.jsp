<#import "/spring.ftl" as spring />
<#import "../templates/navbar.ftl" as navbar />
<#import "../templates/includes.ftl" as includes />
<#import "../templates/tools.ftl" as footer />

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
  <div class="container">
    <div class="span12">
      <div class="content">
        <h1>Admin dashboard</h1>
        
        <div class="btn-group">
          <a class="btn" href="<@spring.url '/admin/messages/add' />">Add Message</a>
          <a class="btn btn-success" href="<@spring.url '/admin' />" >Manage products</a>
        </div>
        
        <h3>Messages</h3>
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
      <div class="translucent-bg-white"></div>
    </div>
  </div>
  
</body>

</html>