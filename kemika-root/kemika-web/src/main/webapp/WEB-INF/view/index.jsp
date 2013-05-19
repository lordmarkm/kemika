<#import "/spring.ftl" as spring />
<#import "./templates/includes.ftl" as includes />

<!DOCTYPE html>
<html>

<head>
  <@includes.universals />
   
  <!-- CircularContentCarousel includes -->
  <script type="text/javascript" src="<@spring.url '/javascript/CircularContentCarousel/js/jquery.easing.1.3.js' />"></script>
  <script type="text/javascript" src="<@spring.url '/javascript/CircularContentCarousel/js/jquery.mousewheel.js' />"></script>
  <script type="text/javascript" src="<@spring.url '/javascript/CircularContentCarousel/js/jquery.contentcarousel.js' />"></script>

  <title>Kemika Internationale</title>
</head>

<body>

<div id="ca-container" class="ca-container">
    <div class="ca-wrapper">
        <div class="ca-item ca-item-1">
            <div class="ca-item-main">
                <div class="ca-icon"></div>
                <h3><@spring.message 'hello.world' /> Stop factory farming</h3>
                <h4>
                    <span class="ca-quote">“</span>
                    <span>Some text...</span>
                </h4>
                    <a href="#" class="ca-more">more...</a>
            </div>
            <div class="ca-content-wrapper">
                <div class="ca-content">
                    <h6>Animals are not commodities</h6>
                    <a href="#" class="ca-close">close</a>
                    <div class="ca-content-text">
                        <p>Some more text...</p>
                    </div>
                    <ul>
                        <li><a href="#">Read more</a></li>
                        <li><a href="#">Share this</a></li>
                        <li><a href="#">Become a member</a></li>
                        <li><a href="#">Donate</a></li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="ca-item ca-item-2">
         	<div class="ca-item-main">
                <div class="ca-icon"></div>
                <h3>Continue factory farming lol</h3>
                <h4>
                    <span class="ca-quote">“</span>
                    <span>Some text...</span>
                </h4>
                    <a href="#" class="ca-more">more...</a>
            </div>
            <div class="ca-content-wrapper">
                <div class="ca-content">
                    <h6>Animals are commodities</h6>
                    <a href="#" class="ca-close">close</a>
                    <div class="ca-content-text">
                        <p>Some more text...</p>
                    </div>
                    <ul>
                        <li><a href="#">Read more</a></li>
                        <li><a href="#">Share this</a></li>
                        <li><a href="#">Become a member</a></li>
                        <li><a href="#">Donate</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div><!-- ca-wrapper -->
</div><!-- ca-container -->

</body>

<script>
$('#ca-container').contentcarousel({
    // speed for the sliding animation
    sliderSpeed     : 500,
    // easing for the sliding animation
    sliderEasing    : 'easeOutExpo',
    // speed for the item animation (open / close)
    itemSpeed       : 500,
    // easing for the item animation (open / close)
    itemEasing      : 'easeOutExpo',
    // number of items to scroll at a time
    scroll          : 1
});
</script>

</html>