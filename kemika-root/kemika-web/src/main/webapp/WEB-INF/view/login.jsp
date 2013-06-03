<#import "/spring.ftl" as spring /> 
<#import "./templates/navbar.ftl" as navbar /> 
<#import "./templates/includes.ftl" as includes />

<!DOCTYPE html>
<html>

<head>
  <@includes.universals />
  <title>Login</title>
</head>

<body>
  <@navbar.navbar />
  <div class="clearfix"></div>
  <div class="container">
    <div class="span8">
      <#assign action><@spring.url '/login/authenticate' /></#assign>
      <form action="${action }" method="post">
        <fieldset>
        <legend>Login</legend>
        <ul class="nobullets">
          <li>
            <label>Username: <input type="text" name="j_username" value="${SPRING_SECURITY_LAST_USERNAME}" /></label>
          </li>
          <li>
            <label>Password: <input type="password" name="j_password" /></label>
          </li>
        </ul>
        </fieldset>
        <input type="submit" />
      </form>
    </div>
  </div>
  
</body>
</html>