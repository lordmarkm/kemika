<#import "/spring.ftl" as spring />

<!DOCTYPE html>
<html>

<head>
<link
  href="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.1/css/bootstrap-combined.min.css"
  rel="stylesheet">
<link href="<@spring.url '/css/default.css' />" rel="stylesheet">

<script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<script
  src="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.1/js/bootstrap.min.js"></script>
</head>

<body>
  <div id="wrap">

    <div id="VMmodal" class="modal hide fade">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal"
          aria-hidden="true">&times;</button>
        <h3>Vision and Mission</h3>
      </div>
      <div class="modal-body">
        <div class="tabbable tabs-left">
          <ul class="nav nav-tabs">
            <li class="active"><a href="#vision" data-toggle="tab">Vision</a></li>
            <li><a href="#mission" data-toggle="tab">Mission</a></li>
          </ul>
          <div class="tab-content">
            <div class="tab-pane active" id="vision">
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
        <button type="button" class="close" data-dismiss="modal"
          aria-hidden="true">&times;</button>
        <h3>Core Values</h3>
      </div>
      <div class="modal-body">
        <div class="tabbable tabs-left">
          <ul class="nav nav-tabs">
            <li class="active"><a href="#value1" data-toggle="tab">Value
                1</a></li>
            <li><a href="#value2" data-toggle="tab">Value 2</a></li>
            <li><a href="#value3" data-toggle="tab">Value 3</a></li>
            <li><a href="#value4" data-toggle="tab">Value 4</a></li>
          </ul>
          <div class="tab-content">
            <div class="tab-pane active" id="value1">
              <p>something about the first value that I don't really
                remember. anyway... stuff here...</p>
            </div>
            <div class="tab-pane" id="value2">
              <p>second value stuff</p>
            </div>
            <div class="tab-pane" id="value3">
              <p>third value stuff</p>
            </div>
            <div class="tab-pane" id="value4">
              <p>fourth value stuff</p>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div id="Histomodal" class="modal hide fade">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal"
          aria-hidden="true">&times;</button>
        <h3>History</h3>
      </div>
      <div class="modal-body">
        <p>Once upon a time...</p>
      </div>
    </div>
    <div id="Foodmodal" class="modal hide fade">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal"
          aria-hidden="true">&times;</button>
        <h3>Product Lists</h3>
      </div>
      <div class="modal-body">
        <div class="tabbable tabs-left">
          <ul class="nav nav-tabs">
            <li class="active"><a href="#prod1" data-toggle="tab">Product
                1</a></li>
            <li><a href="#prod2" data-toggle="tab">Product 2</a></li>
            <li><a href="#prod3" data-toggle="tab">Product 3</a></li>
            <li><a href="#prod4" data-toggle="tab">Product 4</a></li>
          </ul>
          <div class="tab-content">
            <div class="tab-pane active" id="prod1">
              <p>something about the first product that I don't
                really remember. anyway... stuff here...</p>
            </div>
            <div class="tab-pane" id="prod2">
              <p>second product stuff</p>
            </div>
            <div class="tab-pane" id="prod3">
              <p>third product stuff</p>
            </div>
            <div class="tab-pane" id="prod4">
              <p>fourth product stuff</p>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div id="Contactmodal" class="modal hide fade">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal"
          aria-hidden="true">&times;</button>
        <h3>Contact Us</h3>
      </div>
      <div class="modal-body">
        <p>some contact details...</p>
      </div>
    </div>

    <div class="navbar">
      <ul class="nav">
        <li><a href="#" role="button">Kemika Home</a></li>
        <li class="dropdown"><a class="dropdown-toggle"
          data-toggle="dropdown" href="#">About Kemika</a>
          <ul class="dropdown-menu" role="menu" aria-labelledby="dLabel">
            <li><a tabindex="-1" href="#Histomodal" role="button"
              data-toggle="modal">History</a></li>
            <li><a tabindex="-1" href="#VMmodal" role="button"
              data-toggle="modal">Vision and Mission</a></li>
            <li><a tabindex="-1" href="#CVmodal" role="button"
              data-toggle="modal">Core Values</a></li>
          </ul></li>
        <li class="dropdown"><a class="dropdown-toggle"
          data-toggle="dropdown" href="#">Product Lists</a>
          <ul class="dropdown-menu" role="menu" aria-labelledby="dLabel">
            <li><a tabindex="-1" href="#Foodmodal" role="button"
              data-toggle="modal">Food</a></li>
            <li><a tabindex="-1" href="#Watermodal" role="button"
              data-toggle="modal">Water</a></li>
            <li><a tabindex="-1" href="#Minemodal" role="button"
              data-toggle="modal">Mining</a></li>
          </ul></li>
        <li><a href="#Contactmodal" role="button"
          data-toggle="modal">Contact Us</a></li>
        <li class="dropdown"><a class="dropdown-toggle"
          data-toggle="dropdown" href="#">Links and Stuff</a>
          <ul class="dropdown-menu" role="menu" aria-labelledby="dLabel">
            <li><a tabindex="-1"
              href="http://www.helenachemical.com/Pages/home.aspx">Helena</a></li>
            <li><a tabindex="-1"
              href="http://www.eastman.com/Pages/Home.aspx">Eastman</a></li>
          </ul></li>
      </ul>

      <form class="navbar-search pull-right">
        <input type="text" class="search-query" placeholder="Search">
      </form>
    </div>

<!-- This block of code has been commented out. Can't seem to make it work -->
<!-- 
    <div class="container">
      <div class="wrap">
        <div id="ca-container" class="ca-container">
          <div class="ca-wrapper">
            <div class="ca-item ca-item-1">
              <div class="ca-item-maon">
                <div class="ca-icon"></div>
                <h3>Some Title</h3>
                <h4>
                  <span class="ca-quote"></span> <span>some
                    text...</span>
                </h4>
                <img
                  src="<@spring.url '/images/splash-carousel/cosmetics.png' />"
                  alt="Cosmetics" title="Cosmetics" /> <br> <a
                  href="#" class="ca-more">more</a>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

    <div class="container">
      <div class="wrap">
        <div id="ca-container" class="ca-container">
          <div class="ca-wrapper">
            <div class="ca-item ca-item-1">
              <div class="ca-item-maon">
                <div class="ca-icon"></div>
                <h3>Some Title</h3>
                <h4>
                  <span class="ca-quote"></span> <span>some
                    text...</span>
                </h4>
                <img
                  src="<@spring.url '/images/splash-carousel/food.png' />"
                  alt="Food" title="Food" /> <br> <a href="#"
                  class="ca-more">more</a>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
 -->
 <!-- till here -->


    <div style="height: 1000px;"></div>
    <div id="push"></div>
  </div>
  <div id="footer">
    <div class="container">
      Footer lol

      <div class="pull-right">
        <div class="btn">Wat</div>
      </div>
    </div>
  </div>
</body>

</html>