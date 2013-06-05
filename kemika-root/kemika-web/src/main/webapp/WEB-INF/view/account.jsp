<#import "/spring.ftl" as spring />
<#import "./templates/navbar.ftl" as navbar />
<#import "./templates/includes.ftl" as includes />
<#assign sec=JspTaglibs["http://www.springframework.org/security/tags"] />

<!DOCTYPE html>
<html lang="en">
  
<head>
  <@includes.universals />
  <title><@sec.authentication property="principal.username" /></title>
</head>

<body>
  <@navbar.navbar />
  
  <div class="container">
    <div class="span12" style="position: relative;">
      <div class="content">
        <h1>Account Management</h1>
        
        <h3>Account Details</h3>
        <p>Username: <@sec.authentication property="principal.username" />
        <p>Authorities: <@sec.authentication property="principal.authorities" />

        <h3>Update Account</h3>
        <#assign action><@spring.url '/account' /></#assign>
        <form action="${action }" method="post">
          <@spring.bind "form" /> 
          
          <fieldset>
          <legend>Change username or password</legend>
          <@spring.showErrors '<br>', 'error' />
          <@spring.formHiddenInput 'form.id' />
          <ul class="nobullets">
            <li>
              <label for="username">Username</label> 
              <@spring.formInput 'form.username', 'readonly="readonly"' />
              <@spring.showErrors '<br>', 'error' />
            </li>
            <li>
              <label for="password">Change Password</label>
              <@spring.formPasswordInput 'form.password' /> 
              <@spring.showErrors '<br>', 'error' />
            </li>
            <li>
              <label for="confirmpw">Confirm New Password</label>
              <@spring.formPasswordInput 'form.confirmpw' />
              <@spring.showErrors '<br>', 'error' />
            </li>
            <li>
              <button class="btn">Submit</button>
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