<#import "/spring.ftl" as spring /> 
<#import "../templates/navbar.ftl" as navbar /> 
<#import "../templates/tools.ftl" as footer />
<#import "../templates/includes.ftl" as includes />

<!DOCTYPE html>
<html>

<head>
  <@includes.universals />
  <script src="<@spring.url '/javascript/admin/messageform.js' />" ></script>
  <title>Add or Edit Message</title>
</head>

<body>

  <script>
  var msgform = {
		  edit : <#if edit>'true'<#else>''</#if>
  }
  </script>

  <@navbar.navbar />
  <div class="container">
    <div class="span12">
      <div class="content span6">
        <#assign action><@spring.url '/admin/messages/supdate' /></#assign>
        <form action="${action }" method="post">
          <@spring.bind "form" /> 
          <@spring.showErrors '<br>', 'error' />
          <@spring.formHiddenInput 'form.id' />
          
          <fieldset>
          <legend>Add or Edit a Message</legend>
          <ul class="nobullets">
            
            <li>
              <label for="key">Key</label> 
              <@spring.formInput 'form.key' />
            </li>
            <li>
              <label for="description">Description</label>
              <@spring.formTextarea 'form.description' /> 
            </li>
            <li>
              <label for="message">Message</label>
              <@spring.formTextarea 'form.message' />
            </li>
            
            <li>
              <button class="btn">Submit</button>
              <a class="btn" href="<@spring.url '/admin/messages' />">Cancel</a>
            </li>
          </ul>
          </fieldset>
        </form>
      </div>
    </div>
  </div>
  
</body>
</html>