<#import "/spring.ftl" as spring /> 
<#import "../templates/navbar.ftl" as navbar /> 
<#import "../templates/tools.ftl" as footer />
<#import "../templates/includes.ftl" as includes />

<!DOCTYPE html>
<html>

<head>
  <@includes.universals />
  <title>New Product</title>
</head>

<body>
  <@navbar.navbar />
  <div class="container">
    <div class="span12">
      <div class="content span6">
        <#assign action><@spring.url '/admin/newproduct' /></#assign>
        <form action="${action }" method="post">
          <@spring.bind "form" /> 
          <fieldset>
          <legend>Create a new Product</legend>
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
              <label for="category">Category</label>
              <@spring.bind "catnames" />
              <@spring.formSingleSelect 'form.category', catnames />
            </li>
            <li>
              <button class="btn">Create Product</button>
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