<#macro navbar>
	<link href="<@spring.url '/css/default.css' />" rel="stylesheet">
	<link href="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.1/css/bootstrap-combined.min.css" rel="stylesheet">
	<script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
	<script src="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.1/js/bootstrap.min.js"></script>

    <div id="VMmodal" class="modal hide fade">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
        <h3>Vision</h3>
      </div>
      <div class="modal-body">
		<p>To become the most preferred distributor and retailer of chemicals in food, agricultural and industrial 
		applications</p>
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
            <li class="active"><a href="#value1" data-toggle="tab">Leadership</a></li>
            <li><a href="#value2" data-toggle="tab">Sustainability</a></li>
            <li><a href="#value3" data-toggle="tab">Transparency</a></li>
            <li><a href="#value4" data-toggle="tab">Quality, Safety, and Environment</a></li>
          </ul>
          <div class="tab-content">
            <div class="tab-pane active" id="value1">
              <p>We are passionately driven to make a difference. We are committed to develop skills to change things
              for the better and surpass ordinary standards in all of the activities of our operation.</p>
            </div>
            <div class="tab-pane" id="value2">
              <p>We commit to contribute to sustainable development. This requires balancing short and long-term 
              interests, intergrating economic, environmental and social considerations into the company's 
              direction.</p>
            </div>
            <div class="tab-pane" id="value3">
              <p>We insist on intergrity and fairness in all aspects of our business. All business transactions 
              must be reflected accurately and fairly in the accounts of the company in accordance with 
              established procedures and are subject to audit and disclosure.</p>
            </div>
            <div class="tab-pane" id="value4">
              <p>We improve our performance by havig a systematic approach to quality, safety, and environmental 
              management. We continuously look for ways to reduce the environmental impact of our operations; 
              improve the quality of our products and services; and ensure the safety of our people.</p>
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
        <p>Kemika Internationale, Inc. traces its beginnings in 1997 when Stan Chem Philippines, Inc. was established 
        as an affiliate of a UK-based chemical trading company. Over the years the company has grown and been 
        recognized in the industry as a dependable supplier of chemicals. In order to cater to market demands of 
        food, pharmaceutical, veterinary, and cosmetics industries, Stan Chem Philippines, Inc. gave birth to 
        Kemika Internationale, Inc.</p>
      </div>
    </div>

    <div class="navbar pull-right">
      <ul class="nav">
        <li><a href="<@spring.url '/' />" role="button">Kemika Home</a></li>
        <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">About Kemika</a>
          <ul class="dropdown-menu" role="menu" aria-labelledby="dLabel">
            <li><a tabindex="-1" href="#Histomodal" role="button" data-toggle="modal">History</a></li>
            <li><a tabindex="-1" href="#VMmodal" role="button" data-toggle="modal">Vision</a></li>
            <li><a tabindex="-1" href="#CVmodal" role="button" data-toggle="modal">Core Values</a></li>
          </ul></li>
        <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Product Line</a>
          <ul class="dropdown-menu" role="menu" aria-labelledby="dLabel">
            <li><a tabindex="-1" href="/foodproductlist" role="button" data-toggle="modal">Food</a></li>
            <li><a tabindex="-1" href="/cosmeticsproductlist" role="button" data-toggle="modal">Cosmetics</a></li>
            <li><a tabindex="-1" href="/veterinaryproductlist" role="button" data-toggle="modal">Veterinary</a></li>
          </ul></li>
        <li><a href="<@spring.url '/clients' />" >Clients</a></li>
        <li><a href="/contactus" role="button" data-toggle="modal">Contact Us</a></li>
      </ul>

      <form class="navbar-search">
        <input type="text" class="search-query" placeholder="Search">
      </form>
    </div>
  </#macro>