<#import "/spring.ftl" as spring /> 
<#import "./templates/navbar.ftl" as navbar /> 
<#import "./templates/footer.ftl" as footer />
<#import "./templates/includes.ftl" as includes />

<!DOCTYPE html>
<html>

<head>
  <@includes.universals />
  
  <title>Edit ${form.name }</title>
</head>

<body>

  <@navbar.navbar />

  <div class="clearfix"></div>

  <div class="container">
    <#assign action><@spring.url '/admin/category/edit' /></#assign>
    <form action="${action }" method="post">
      <@spring.bind "form" /> 
      <@spring.formHiddenInput 'form.id' />
      
      <fieldset>
      <legend>Edit ${form.name }</legend>
      <ul class="nobullets">
        
        <li>
          <label for="name">Name</label> 
          <@spring.formInput 'form.name' />
        </li>
        <li>
          <label for="description">Description</label>
          <@spring.formTextarea 'form.description' /> 
        </li>
        
        <li>
          <button class="btn">Update Category</button>
          <a class="btn" href="<@spring.url '/admin' />">Cancel</a>
        </li>
        
      </ul>
      </fieldset>
    </form>
  </div>
  
</body>
</html>