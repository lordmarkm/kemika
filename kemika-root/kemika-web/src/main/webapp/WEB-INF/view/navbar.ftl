<#macro navbar>
    <div id="VMmodal" class="modal hide fade">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
        <h3>Vision and Mission</h3>
      </div>
      <div class="modal-body">
        <div class="tabbable tabs-left">
          <ul class="nav nav-tabs">
            <li class="active"><a href="#vision" data-toggle="tab">Vision</a></li>
            <li><a href="#mission" data-toggle="tab">Mission</a></li>
          </ul>
          <div class="tab-content">
            <div class="tab-pane active" id="visio              	<li>Food Grade Lubricants</li>n">
              <p>vision stuff here...</p>
            </div>
            <div class="tab-pane" id="mission">
              <p>mission stuff here...</p>
            </div>
          </div>
        </div>
      </div>
    </div>
    
    <div id="CVmodal" class="modal hide fade">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
        <h3>Core Values</h3>
      </div>
      <div class="modal-body">
        <div class="tabbable tabs-left">
          <ul class="nav nav-tabs">
            <li class="active"><a href="#value1" data-toggle="tab">Value 1</a></li>
            <li><a href="#value2" data-toggle="tab">Value 2</a></li>
            <li><a href="#value3" data-toggle="tab">Value 3</a></li>
            <li><a href="#value4" data-toggle="tab">Value 4</a></li>
          </ul>
          <div class="tab-content">
            <div class="tab-pane active" id="value1">
              <p>something about the first value that I don't really remember. anyway... stuff here...</p>
            </div>
            <div class="tab-pane" id="value2">
              <p>second value stuff</p>
            </div>
            <div class="tab-pane" id="value3">
              <p>third value stuff</p>
            </div>pull-right
            <div class="tab-pane" id="value4">
              <p>fourth value stuff</p>
            </div>
          </div>
        </div>
      </div>
    </div>
    
    <div id="Histomodal" class="modal hide fade">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
        <h3>History</h3>
      </div>
      <div class="modal-body">
        <p>Once upon a time...</p>
      </div>
    </div>

    <div class="navbar pull-right">
      <ul class="nav">
        <li><a href="/experiment" role="button">Kemika Home</a></li>
        <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">About Kemika</a>
          <ul class="dropdown-menu" role="menu" aria-labelledby="dLabel">
            <li><a tabindex="-1" href="#Histomodal" role="button" data-toggle="modal">History</a></li>
            <li><a tabindex="-1" href="#VMmodal" role="button" data-toggle="modal">Vision and Mission</a></li>
            <li><a tabindex="-1" href="#CVmodal" role="button" data-toggle="modal">Core Values</a></li>
          </ul></li>
        <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Product Line</a>
          <ul class="dropdown-menu" role="menu" aria-labelledby="dLabel">
            <li><a tabindex="-1" href="/foodproductlist" role="button" data-toggle="modal">Food</a></li>
            <li><a tabindex="-1" href="/cosmeticsproductlist" role="button" data-toggle="modal">Cosmetics</a></li>
            <li><a tabindex="-1" href="#Minemodal" role="button" data-toggle="modal">Mining</a></li>
          </ul></li>
        <li><a href="/contactus" role="button" data-toggle="modal">Contact Us</a></li>
      </ul>

      <form class="navbar-search">
        <input type="text" class="search-query" placeholder="Search">
      </form>
    </div>
  </#macro>
  
  <#macro footer>
   <div id="footer">
    <div class="container">
      Footer lol

      <div class="pull-right">
        <div class="btn">Wat</div>
      </div>
    </div>
  </div>
  </#macro>