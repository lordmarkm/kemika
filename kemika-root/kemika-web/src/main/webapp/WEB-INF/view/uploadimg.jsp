<#import "/spring.ftl" as spring /> 
<#import "./templates/navbar.ftl" as navbar /> 
<#import "./templates/tools.ftl" as footer />
<#import "./templates/includes.ftl" as includes />

<!DOCTYPE html>
<html>

<head>
  <@includes.universals />
  <script src="<@spring.url '/javascript/filestyle/bootstrap-filestyle.min.js' />" ></script>
  <title>Upload Image</title>
</head>

<body>

  <@navbar.navbar />
  <div class="container">
    <div class="span12">
      <div class="content span6">
        <#assign action><@spring.url '/image/upload/${type }/${id }' /></#assign>
        <form action="${action }" method="post" enctype="multipart/form-data">
          <@spring.bind "form" /> 
          
          <fieldset>
          <legend>Upload an image</legend>
          <ul class="nobullets">
            
            <li>
              <label for="file">File</label>
              <div class="clearfix"> 
                <input type="file" id="file" name="file" />
              </div>
            </li>
            
            <li>
              <button class="btn">Upload</button>
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

<style>
label.btn {
  margin-bottom: 10px;
}
</style>

<script>
$(function(){
	$('#file').filestyle();
});
</script>

</html>