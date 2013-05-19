<#import "/spring.ftl" as spring />
<#import "./navbar.ftl" as navbar />
<#import "./templates/includes.ftl" as includes />

<!DOCTYPE html>
<html lang="en">
    <head>
      <@includes.universals />
    
        <title>Kemika Internationale</title>
		<meta charset="UTF-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
		<meta name="viewport" content="width=device-width, initial-scale=1.0"> 
        <meta name="description" content="Kemika Internationale by Mark and Gemgem" />
        <meta name="keywords" content="kemika, chemicals, philippines" />
		<meta name="author" content="Mark Martinez" />
		<link rel="shortcut icon" href="<@spring.url '/images/favicon.ico' />"> 
        <link rel="stylesheet" type="text/css" href="<@spring.url '/libs/CircularContentCarousel/css/demo.css' />" />
		<link rel="stylesheet" type="text/css" href="<@spring.url '/css/splash.css' />" />
		<link rel="stylesheet" type="text/css" href="<@spring.url '/libs/CircularContentCarousel/css/jquery.jscrollpane.css' />" media="all" />
		<link href='http://fonts.googleapis.com/css?family=PT+Sans+Narrow&v1' rel='stylesheet' type='text/css' />
		<link href='http://fonts.googleapis.com/css?family=Coustard:900' rel='stylesheet' type='text/css' />
		<link href='http://fonts.googleapis.com/css?family=Rochester' rel='stylesheet' type='text/css' />
    </head>
    <body>
    	<@navbar.navbar />
    	<div class="clearfix"></div>
    	
		<div class="container">
			<h1>Welcome to Kemika Internationale</h1>
			<div id="ca-container" class="ca-container">
				<div class="ca-wrapper">
					<div class="ca-item ca-item-1">
						<div class="ca-item-main">
							<div class="ca-icon"></div>
							<h3>Cosmetics</h3>
							<h4>
								<span class="ca-quote">&ldquo;</span>
								<span>Botanical extracts, Fragrances, Essential oils, Soap bases, Dry botanicals, Oleoresins, etc.</span>
							</h4>
								<a href="#" class="ca-more">more...</a>
						</div>
						<div class="ca-content-wrapper">
							<div class="ca-content">
								<h6>Animals are not commodities</h6>
								<a href="#" class="ca-close">close</a>
								<div class="ca-content-text">
									<p>I am so happy, my dear friend, so absorbed in the exquisite sense of mere tranquil existence, that I neglect my talents. I should be incapable of drawing a single stroke at the present moment; and yet I feel that I never was a greater artist than now.</p>
									<p>When, while the lovely valley teems with vapour around me, and the meridian sun strikes the upper surface of the impenetrable foliage of my trees, and but a few stray gleams steal into the inner sanctuary, I throw myself down among the tall grass by the trickling stream;</p>
									<p>She packed her seven versalia, put her initial into the belt and made herself on the way.</p>
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
							<h3><@spring.message 'food' />Food</h3>
							<h4>
								<span class="ca-quote">&ldquo;</span>
								<span>Commodities, Flavors, Natural colors, Sweeteners, Hydrocolloids, Preservatives, Food grade lubricants, etc.</span>
							</h4>
								<a href="#" class="ca-more">more...</a>
						</div>
						<div class="ca-content-wrapper">
							<div class="ca-content">
								<h6>Would you eat your dog?</h6>
								<a href="#" class="ca-close">close</a>
								<div class="ca-content-text">
									<p>I am so happy, my dear friend, so absorbed in the exquisite sense of mere tranquil existence, that I neglect my talents. I should be incapable of drawing a single stroke at the present moment; and yet I feel that I never was a greater artist than now.</p>
									<p>When, while the lovely valley teems with vapour around me, and the meridian sun strikes the upper surface of the impenetrable foliage of my trees, and but a few stray gleams steal into the inner sanctuary, I throw myself down among the tall grass by the trickling stream;</p>
									<p>She packed her seven versalia, put her initial into the belt and made herself on the way.</p>
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
					<div class="ca-item ca-item-3">
						<div class="ca-item-main">
							<div class="ca-icon"></div>
							<h3>Become 100% meat-free</h3>
							<h4>
								<span class="ca-quote">&ldquo;</span>
								<span>I feel that spiritual progress does demand at some stage that we should cease to kill our fellow creatures for the satisfaction of our bodily wants.</span>
							</h4>
								<a href="#" class="ca-more">more...</a>
						</div>
						<div class="ca-content-wrapper">
							<div class="ca-content">
								<h6>You can change the world</h6>
								<a href="#" class="ca-close">close</a>
								<div class="ca-content-text">
									<p>I am so happy, my dear friend, so absorbed in the exquisite sense of mere tranquil existence, that I neglect my talents. I should be incapable of drawing a single stroke at the present moment; and yet I feel that I never was a greater artist than now.</p>
									<p>When, while the lovely valley teems with vapour around me, and the meridian sun strikes the upper surface of the impenetrable foliage of my trees, and but a few stray gleams steal into the inner sanctuary, I throw myself down among the tall grass by the trickling stream;</p>
									<p>She packed her seven versalia, put her initial into the belt and made herself on the way.</p>
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
					<div class="ca-item ca-item-4">
						<div class="ca-item-main">
							<div class="ca-icon"></div>
							<h3>Make a difference</h3>
							<h4>
								<span class="ca-quote">&ldquo;</span>
								<span>A man is but the product of his thoughts what he thinks, he becomes.</span>
							</h4>
								<a href="#" class="ca-more">more...</a>
						</div>
						<div class="ca-content-wrapper">
							<div class="ca-content">
								<h6>Think globally, act locally</h6>
								<a href="#" class="ca-close">close</a>
								<div class="ca-content-text">
									<p>I am so happy, my dear friend, so absorbed in the exquisite sense of mere tranquil existence, that I neglect my talents. I should be incapable of drawing a single stroke at the present moment; and yet I feel that I never was a greater artist than now.</p>
									<p>When, while the lovely valley teems with vapour around me, and the meridian sun strikes the upper surface of the impenetrable foliage of my trees, and but a few stray gleams steal into the inner sanctuary, I throw myself down among the tall grass by the trickling stream;</p>
									<p>She packed her seven versalia, put her initial into the belt and made herself on the way.</p>
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
					<div class="ca-item ca-item-5">
						<div class="ca-item-main">
							<div class="ca-icon"></div>
							<h3>Say no to killing</h3>
							<h4>
								<span class="ca-quote">&ldquo;</span>
								<span>A weak man is just by accident. A strong but non-violent man is unjust by accident.</span>
							</h4>
								<a href="#" class="ca-more">more...</a>
						</div>
						<div class="ca-content-wrapper">
							<div class="ca-content">
								<h6>Animals have rights, too!</h6>
								<a href="#" class="ca-close">close</a>
								<div class="ca-content-text">
									<p>I am so happy, my dear friend, so absorbed in the exquisite sense of mere tranquil existence, that I neglect my talents. I should be incapable of drawing a single stroke at the present moment; and yet I feel that I never was a greater artist than now.</p>
									<p>When, while the lovely valley teems with vapour around me, and the meridian sun strikes the upper surface of the impenetrable foliage of my trees, and but a few stray gleams steal into the inner sanctuary, I throw myself down among the tall grass by the trickling stream;</p>
									<p>She packed her seven versalia, put her initial into the belt and made herself on the way.</p>
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
				</div>
			</div>
			<h5>Site mockup by Mark and Yvonne Martinez</h5>
		</div>
		<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.6.2/jquery.min.js"></script>
		<script type="text/javascript" src="<@spring.url '/libs/CircularContentCarousel/js/jquery.easing.1.3.js' />"></script>
		<!-- the jScrollPane script -->
		<script type="text/javascript" src="<@spring.url '/libs/CircularContentCarousel/js/jquery.mousewheel.js' />"></script>
		<script type="text/javascript" src="<@spring.url '/libs/CircularContentCarousel/js/jquery.contentcarousel.js' />"></script>
		<script type="text/javascript">
			$('#ca-container').contentcarousel();
		</script>
    </body>
</html>
