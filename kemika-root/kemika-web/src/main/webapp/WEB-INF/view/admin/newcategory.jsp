<#import "/spring.ftl" as spring /> 
<#import "../templates/navbar.ftl" as navbar /> 
<#import "../templates/tools.ftl" as footer />
<#import "../templates/includes.ftl" as includes />

<!DOCTYPE html>
<html>

<head>
  <@includes.universals />
  <title>New Category</title>
</head>

<body>
  <@navbar.navbar />
  <div class="container">
    <div class="span12">
      <div class="content span6">
        <#assign action><@spring.url '/admin/newcategory' /></#assign>
        <form action="${action }" method="post">
          <@spring.bind "form" /> 
          
          <fieldset>
          <legend>Create a new Category</legend>
          <@spring.showErrors '<br>', 'error' />
          
          <ul class="nobullets">
            
            <li>
              <label for="name">Name</label> 
              <@spring.formInput 'form.name' />
              <@spring.showErrors '<br>', 'error' />
            </li>
            <li>
              <label for="description">Description</label>
              <@spring.formTextarea 'form.description' /> 
              <@spring.showErrors '<br>', 'error' />
            </li>
            <li>
              <button class="btn">Create Category</button>
              <a class="btn" href="<@spring.url '/admin' />">Cancel</a>
            </li>
            
          </ul>
          </fieldset>
        </form>
      </div>
      <div class="translucent-bg-white"></div>
    </div>
  </div>
  
</body>
</html>