<#macro navbar>
<div id="modal-vision" class="modal hide fade">
  <div class="modal-header">
    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
    <h3>Vision</h3>
  </div>
  <div class="modal-body">
    <p><@spring.message 'about.vision' /></p>
  </div>
</div>
    
<div id="modal-values" class="modal hide fade">
  <div class="modal-header">
    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
    <h3>Core Values</h3>
  </div>
  <div class="modal-body">
    <div class="tabbable tabs-left">
      <ul class="nav nav-tabs">
        <li class="active"><a href="#value1" data-toggle="tab">Leadership</a></li>
        <li><a href="#value2" data-toggle="tab">Sustainability</a></li>
        <li><a href="#value3" data-toggle="tab">Transparency</a></li>
        <li><a href="#value4" data-toggle="tab">Quality, Safety, and Environment</a></li>
      </ul>
      <div class="tab-content">
        <div class="tab-pane active" id="value1">
          <p><@spring.message 'about.values.leadership' /></p>
        </div>
        <div class="tab-pane" id="value2">
          <p><@spring.message 'about.values.sustainability' /></p>
        </div>
        <div class="tab-pane" id="value3">
          <p><@spring.message 'about.values.transparency' /></p>
        </div>
        <div class="tab-pane" id="value4">
          <p><@spring.message 'about.values.quality' /></p>
        </div>
      </div>
    </div>
  </div>
</div>
    
<div id="modal-history" class="modal hide fade">
  <div class="modal-header">
    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
    <h3>History</h3>
  </div>
  <div class="modal-body">
    <p><@spring.message 'about.history' /></p>
  </div>
</div>

<div class="navbar pull-right">
  <ul class="nav">
    <li><a href="<@spring.url '/' />" role="button">Kemika Home</a></li>
    <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">About Kemika</a>
      <ul class="dropdown-menu" role="menu" aria-labelledby="dLabel">
        <li><a tabindex="-1" href="#modal-history" role="button" data-toggle="modal">History</a></li>
        <li><a tabindex="-1" href="#modal-vision" role="button" data-toggle="modal">Vision</a></li>
        <li><a tabindex="-1" href="#modal-values" role="button" data-toggle="modal">Core Values</a></li>
      </ul>
    </li>
    <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Product Line</a>
      <ul class="dropdown-menu" role="menu" aria-labelledby="dLabel">
        <#list navcats as category>
          <li><a tavindex="-1" href="<@spring.url '/categories/${category.id}' />" role="button" data-toggle="modal">${category.name}</a></li>
        </#list>
      </ul>
    </li>
    <li><a href="<@spring.url '/clients' />" >Clients</a></li>
    <li><a href="/contactus" role="button" data-toggle="modal">Contact Us</a></li>
  </ul>

  <form class="navbar-search">
    <input type="text" class="search-query" placeholder="Search">
  </form>
</div>
    
<div class="clearfix"></div>
</#macro>