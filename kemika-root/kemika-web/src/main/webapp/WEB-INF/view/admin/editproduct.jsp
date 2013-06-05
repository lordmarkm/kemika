<#import "/spring.ftl" as spring /> 
<#import "../templates/navbar.ftl" as navbar /> 
<#import "../templates/tools.ftl" as footer />
<#import "../templates/includes.ftl" as includes />

<!DOCTYPE html>
<html>

<head>
  <@includes.universals />
  <title>Edit ${form.name }</title>
</head>

<body>
  <@navbar.navbar />
  <div class="container">
    <div class="span12">
      <div class="content span6">
        <#assign action><@spring.url '/admin/product/edit' /></#assign>
        <form action="${action }" method="post">
          <@spring.bind "form" />
          <@spring.formHiddenInput 'form.id' />
          <@spring.formHiddenInput 'form.category' />
           
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
              <label for="category">Category</label>
              <select>
                <option selected="selected">${form.category }</option>
              </select>
            </li>
            <li>
              <button class="btn">Update Product</button>
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