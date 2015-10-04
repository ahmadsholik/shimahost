<?php 
  error_reporting(0);
  session_start();	
  include "config/koneksi.php";
	include "config/fungsi_indotgl.php";
	include "config/class_paging.php";
	include "config/fungsi_combobox.php";
	include "config/library.php";
  include "config/fungsi_autolink.php";
  include "config/fungsi_rupiah.php";
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
  <meta name="description" content="<?php include "dina_meta1.php"; ?>">
  <meta name="keywords" content="<?php include "dina_meta2.php"; ?>">
  <!-- Set the viewport width to device width for mobile -->
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />

  <title><?php include "dina_titel.php"; ?></title>
    
  <!-- Included CSS files -->
  <link rel="stylesheet" href="css/style.css" type="text/css"/>
  <link rel="stylesheet" href="css/responsive.css" type="text/css"/>
  <link rel="stylesheet" href="css/noscript.css" media="screen,all" id="noscript"/>
  
  <!-- Included javascript files -->
  <script type="text/javascript" src="js/jquery.js"></script>
  <script type="text/javascript" src="js/superfish.js"></script>
  <script type="text/javascript" src="js/jquery.fitvids.js"></script> 
  <script type="text/javascript" src="js/jquery.mobilemenu.js"></script>
  <script type="text/javascript" src="js/jquery.easing.1.3.js"></script> 
  <script type="text/javascript" src="js/jquery.flexslider-min.js"></script>
  <script type="text/javascript" src="js/jquery.tweet.js"></script>
  <script type="text/javascript" src="js/jquery.tools.tabs.min.js"></script>
  <script type="text/javascript" src="js/jquery.prettyPhoto.js"></script>
  <script type="text/javascript" src="js/functions.js"></script>
  <script type="text/javascript">
  jQuery(document).ready(function($) {
      /* Main Slider */
	    $('.flexslider').flexslider({
	        animation: "slide",
	        controlNav: false,
	        slideshowSpeed: 4000,
	        animationSpeed: 600,
	        slideshow: true,
	        video: true
	    });
      
	    /* Carousel Slider */
	    $('.flex-carousel')
	        .fitVids()
	        .flexslider({
	        animation: "slide",
	        itemWidth: 220,
	        minItems: 2,
	        maxItems: 4,
	        slideshowSpeed: 7000,
	        slideshow: true,
	        directionNav: true
	    });
  });
  </script>

  <!-- IE Fix for HTML5 Tags -->
  <!--[if lt IE 9]>
    <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
  <![endif]-->

  <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,700,300,800,600&amp;subset=latin,cyrillic-ext,greek-ext,greek,vietnamese,latin-ext,cyrillic' rel='stylesheet' type='text/css'>
  
</head>
<body>
  
  <!-- Header Wrapper -->
  <div id="top-wrapper">
  
  <!-- Header -->
  <header>
  
    <div class="row">
      
      <!-- Header Text -->
      <div class="six columns">
        <div class="operational"><p>you can replace this with your informative text</p></div>
      </div>
      <!-- Header Text End -->
      
      <!-- Header Support Link -->
      <div class="six columns">
        <div class="top_help">
          <ul>
            <li class="help"><a href="#">Help &amp; Support</a></li>
            <li class="chat"><a href="#">Live Chat!</a></li>
            <li class="phone">+62 123456789</li>
            <li class="client-login"><a href="#">Client Login</a></li>
          </ul>
        </div>
      </div>
      <!-- Header Support Link End -->
      
    </div>  
  
  <div class="clear"></div>
  
  <!-- Menu Bar -->
  <section id="menubar">
  
    <div class="row">
      <!-- Logo -->    
      <div id="logo" class="three columns">
        <a href="index.html"><img src="images/logo.png" alt="myHosting"/></a>
      </div>
      <!-- Logo End -->
      
      <!-- Main Navigation -->
      <nav id="navigation" class="nine columns">
        <ul class="sf-menu">
          <li class="selected"><a href="index.html">Home</a><span class="menudesc">Welcome</span></li>
          <li><a href="solution.html">Solutions</a><span class="menudesc">Hosting Features</span></li>
          <li><a href="#">Hosting</a><span class="menudesc">Plans &amp; Pricing</span>
          <ul>
          	<li><a href="shared-hosting.html">Shared Hosting</a></li>
          	<li><a href="dedicated-hosting.html">Dedicated Hosting</a></li>
          </ul>
          </li>
          <li>
            <a href="blog.html">Blog</a><span class="menudesc">Lates News</span>
            <ul>
              <li><a href="single.html">Single Post</a></li>
            </ul>
          </li>
          <li><a href="#">Pages</a><span class="menudesc">Some Pages List</span>
          <ul>
          	<li><a href="about.html">About</a></li>
          	<li><a href="services.html">Services</a></li>
            <li><a href="portfolio.html">Portfolio</a></li>
            <li><a href="single-portfolio.html">Single Portfolio</a></li>
          	<li><a href="contact.html">Contact</a></li>
          	<li><a href="staff.html">Staff</a></li>
          	<li><a href="testimonial.html">Testimonials</a></li>
          </ul>
          </li>
          <li><a href="features.html">Features</a><span class="menudesc">Template Features</span>
          <ul>
            <li><a href="pricing-table.html">Pricing Table</a></li>
            <li><a href="button_list.html">Buttong &amp; List</a></li>
            <li><a href="elements.html">Elements</a></li>
            <li><a href="toggle_tabs_accordion.html">Toggle, Tabs and Accordion</a></li>
            <li><a href="tables.html">Table</a></li>
          	<li><a href="columns.html">Columns</a></li>
          </ul>
          </li>
        </ul>      
      </nav>
      <!-- Main Navigation End -->
      
    </div>
  </section>
  <!-- Menu Bar End -->
  
 </header>
 <!-- Header End -->
 
 <!-- Slideshow Section -->
  <section id="slider">
  
    <!-- Slideshow Wrapper -->
   <div class="flexslider">
     <ul class="slides">
      <!-- Slideshow Item 1 (with image at right) -->
       <li>
    	    <div class="text-left">
    	        <h2>Build Your Hosting Business with Us Now! </h2>
    	        <p>Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia tum vel congue vel non lacus nis tesque habitant</p>
    	        <ul class="star">
    	          <li>Pellentesque tempor euismod quam in facilisis</li>
    	          <li>Integer a odio ac arcu iaculis ultricies quis eu eros</li>
    	          <li>tristique aliquet euismod tellus diam ac </li>
    	        </ul>
    	        <div class="clear"></div>
    	        <a href="#" class="button small orange">Read More</a>
    	    </div>
    	    <div class="image-right">
    	        <img src="images/server.png" alt="" />
    	    </div>
    		</li>
        
        <!-- Slideshow Item 2 (with image at left) -->
    		<li>
    	    <div class="text-right">
    	        <h2>24H Support and Live Help!</h2>
    	        <p>Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia tum vel lacus nis tesque habitant euismod consequat nisi,</p>
    	        <ul class="star">
    	          <li>Pellentesque tempor euismod quam in facilisis</li>
    	          <li>Integer a odio ac arcu iaculis ultricies quis eu eros</li>
    	          <li>tristique aliquet euismod tellus diam ac </li>
    	        </ul>
    	        <div class="clear"></div>
    	        <a href="#" class="button small orange">Read More</a>
    	    </div>
    	    <div class="image-left">
    	        <img src="images/support.png" alt="" />
    	    </div>
    		</li>
        
        <!-- Slideshow Item 3 (with center image and left) -->
    		<li>
    		  <div class="center-text">
    		    <h2>Using the Latest Standard Technology</h2>
    		    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque euismod malesuada pulvinar. Pellentesque cursus consectetur orci, vel molestie urna placerat id. Quisque scelerisque pellentesque pharetra. Maecenas ac leo lectus</p>
    		    <img src="images/browser.png" alt="" class="aligncenter"/>
    		  </div>
    		</li>
        
        <!-- Slideshow Item 4 (Full Image) -->
        <li>
          <img src="images/full-slide.jpg" alt="" class="slide-full" />
          <div class="slide-shadow"></div>
        </li>
                      
        <!-- Slideshow Item 2 (with video at left) -->
    		<li>
    		   <div class="video-frame">
    		    <div class="flex-video"><iframe src="http://player.vimeo.com/video/14511542?badge=0" width="550" height="320"></iframe></div>            
            <div class="slide-shadow2"></div>
    		  </div>
          <div class="video-text">
            <h2>Slideshow Title</h2>
            <p>Aenean non quam et est tempus viverra. Pellentesque lectus urna, porttitor ac lobortis at, dictum a mi eget tortor sit amet nulla mollis lacinia ut id elit dui magna, condimentum vel pulvinar</p>
            <ul>
              <li>tincidunt nec eros vehicula pretium pulvinar.</li>
              <li>Duis porttitor blandit massa, a condimentum</li>
              <li>diam consectetur quis et arcu felis, ac iaculis</li>
              <li>Aliquam porta odio ac augue sollicitudin</li>
            </ul>
  	        <a href="#" class="button medium orange">Read More</a>
          </div>
    		</li>
        
     </ul>
   </div>
   <!-- Slideshow Wrapper End -->
   
 </section>
 <!-- Slideshow Section End -->
 
</div>
<!-- Header Wrapper End -->

  <div class="clear"></div>
  
  <!-- Call to Action -->
  <section id="call-to-action">
    <div class="row">
      <div class="nine columns">
	  <div  class="heading-text">
          <h3>Pilih Sebuah Domain</h3></div>
        
      

      </div>
      <div class="submit-button">
	   <form action="" method=post>
<input type=text name=domain size="60" placeholder="Isi dengan Nama Domain Anda">
<select name="ext">
<option value=".com">.com</option>
<option value=".net">.net</option>
<option value=".org">.org</option>
<option value=".biz">.biz</option>
<option value=".info">.info</option>
<option value=".mobi">.mobi</option>
<option value=".ws">.ws</option>
<option value=".co.id">.co.id</option>
<option value=".or.id">.or.id</option>
<option value=".go.id">.go.id</option>
<option value=".sch.id">.sch.id</option>
<option value=".ac.id">.ac.id</option>
<option value=".mil.id">.mil.id</option>
<option value=".web.id">.web.id</option>
<option value=".tv">.tv</option>
<option value=".cn">.cn</option>
<option value=".cc">.cc</option>
</select>
        <input type=submit name=cek value="Cek Domain" id="submit_btn" class="button small gray"></div><?php
if($_POST[cek]){
$nama_domain = "$_POST[domain]"."$_POST[ext]";
$arrHost = @gethostbynamel("$nama_domain");
if(empty($arrHost)){
echo "<table><tr><td>Domain <strong<b>$nama_domain</b></strong> tersedia</td><td><a href='#' class='button small orange'>Beli Domain</a></td></tr></table>";}
	else{
echo "<table><tr><td>Domain <strong<b>$nama_domain</b></strong> sudah digunakan</td><td><a href='http://$nama_domain' class='button small gray'>Lihat Website</a></td></tr></table>";}}
?></form>
      
    </div>
  </section>
  <!-- Call to Action En d -->
  
  <div class="clear"></div>
  
  <!-- Featured Carousel Block -->
  <section id="features-block">
    <!-- Carousel Wrapper -->
    <div class="flex-carousel carousel">
      <ul class="slides">
        <!-- Carousel Item 1 -->
        <li>
            <img src="images/feature_icon48_1.png" alt="" class="aligncenter"/>
            <h5>Feature Title</h5>
            <p>Mauris dignissim gravida quam, id ornare metus laoreet ultrices. Sed bibendum hendrerit fringilla.</p>
        </li>
        <!-- Carousel Item 2 -->
        <li>
            <img src="images/feature_icon48_2.png" alt="" class="aligncenter"/>
            <h5>Feature Title</h5>
            <p>Mauris dignissim gravida quam, id ornare metus laoreet ultrices. Sed bibendum hendrerit fringilla.</p>
        </li>
        <!-- Carousel Item 3 -->
        <li>
            <img src="images/feature_icon48_3.png" alt="" class="aligncenter"/>
            <h5>Feature Title</h5>
            <p>Mauris dignissim gravida quam, id ornare metus laoreet ultrices. Sed bibendum hendrerit fringilla.</p>
        </li>
        <!-- Carousel Item 4 -->
        <li>
            <img src="images/feature_icon48_4.png" alt="" class="aligncenter"/>
            <h5>Feature Title</h5>
            <p>Mauris dignissim gravida quam, id ornare metus laoreet ultrices. Sed bibendum hendrerit fringilla.</p>
        </li>
        <!-- Carousel Item 5 -->
        <li>
            <img src="images/feature_icon48_5.png" alt="" class="aligncenter"/>
            <h5>Feature Title</h5>
            <p>Mauris dignissim gravida quam, id ornare metus laoreet ultrices. Sed bibendum hendrerit fringilla.</p>
        </li>
        <!-- Carousel Item 6 -->
        <li>
            <img src="images/feature_icon48_6.png" alt="" class="aligncenter"/>
            <h5>Feature Title</h5>
            <p>Mauris dignissim gravida quam, id ornare metus laoreet ultrices. Sed bibendum hendrerit fringilla.</p>
        </li>
        <!-- Carousel Item 7 -->
        <li>
            <img src="images/feature_icon48_7.png" alt="" class="aligncenter"/>
            <h5>Feature Title</h5>
            <p>Mauris dignissim gravida quam, id ornare metus laoreet ultrices. Sed bibendum hendrerit fringilla.</p>
        </li>
        <!-- Carousel Item 8 -->
        <li>
            <img src="images/feature_icon48_8.png" alt="" class="aligncenter"/>
            <h5>Feature Title</h5>
            <p>Mauris dignissim gravida quam, id ornare metus laoreet ultrices. Sed bibendum hendrerit fringilla.</p>
        </li>
        <!-- Carousel Item 9 -->
        <li>
            <img src="images/feature_icon48_9.png" alt="" class="aligncenter"/>
            <h5>Feature Title</h5>
            <p>Mauris dignissim gravida quam, id ornare metus laoreet ultrices. Sed bibendum hendrerit fringilla.</p>
        </li>
        <!-- Carousel Item 10 -->
        <li>
            <img src="images/feature_icon48_10.png" alt="" class="aligncenter"/>
            <h5>Feature Title</h5>
            <p>Mauris dignissim gravida quam, id ornare metus laoreet ultrices. Sed bibendum hendrerit fringilla.</p>
        </li>
        <!-- Carousel Item 11 -->
        <li>
            <img src="images/feature_icon48_11.png" alt="" class="aligncenter"/>
            <h5>Feature Title</h5>
            <p>Mauris dignissim gravida quam, id ornare metus laoreet ultrices. Sed bibendum hendrerit fringilla.</p>
        </li>
        <!-- Carousel Item 12 -->
        <li>
            <img src="images/feature_icon48_12.png" alt="" class="aligncenter"/>
            <h5>Feature Title</h5>
            <p>Mauris dignissim gravida quam, id ornare metus laoreet ultrices. Sed bibendum hendrerit fringilla.</p>
        </li>
      </ul>
    </div>
    <!-- Carousel Wrapper End -->
  </section>
  <!-- Featured Carousel Block End -->
  
  <div class="clear"></div>
  
  <!-- Homepage Content -->
  <div class="homepage-content">
    <div class="row">
      <div class="twelve columns">
        
        <!-- Heading Center Text -->
        <div  class="heading-text">
          <h3>30-days Moneyback Guarantee for All Hosting Plans</h3>
          <p>Get started in less than 60 seconds. Pick a plan below to sign up!</p>
        </div>
        
        <!-- Pricing Wrapper -->
        <div class="pricing-wrapper fourth-col">
          <!-- begin of pricing column1 -->
          <div class="pricing-column">
              <h5 class="pricing-title">Starter</h5>
              <div class="pricing-price">
                  <h1>$20<span>/ Month</span></h1>
              </div>                    
              <ul class="pricing-feature">
                  <li>Up to 200 users</li>
                  <li>Limited voters &amp; votes</li>
                  <li>Limited ideas, comments</li>
                  <li>Moderation tools</li>
                  <li>Multiple sign-in / singup options</li>
                  <li>Widget tracking</li>
              </ul>
              <div class="pricing-description">Best for starter teams</div>
              <div class="pricing-button">
                  <a href="#" class="button small gray">Free trial</a>
              </div>                   
          </div>
          
          <!-- begin of pricing column2 -->
          <div class="pricing-column">
              <h5 class="pricing-title">Regular</h5>
              <div class="pricing-price">
                  <h1>$24<span>/ Month</span></h1> 
              </div>                    
              <ul class="pricing-feature">
                  <li>Up to 200 users</li>
                  <li>Limited voters &amp; votes</li>
                  <li>Limited ideas, comments</li>
                  <li>Moderation tools</li>
                  <li>Multiple sign-in / singup options</li>
                  <li>Widget tracking</li>
              </ul>
              <div class="pricing-description">Best for starter teams</div>   
              <div class="pricing-button">
                  <a href="#" class="button small gray">Sign up</a>
              </div>                   
          </div>
          
          <!-- begin of pricing column3 -->
          <div class="pricing-column orange-pr feature-package">
              <h5 class="pricing-title">Plus +</h5>
              <div class="pricing-price">
                  <h1>$49<span>/ Month</span></h1> 
              </div>                    
              <ul class="pricing-feature">
                  <li>Up to 200 users</li>
                  <li>Limited voters &amp; votes</li>
                  <li>Limited ideas, comments</li>
                  <li>Moderation tools</li>
                  <li>Multiple sign-in / singup options</li>
                  <li>Widget tracking</li>
              </ul>
              <div class="pricing-description">Best for starter teams</div>                
              <div class="pricing-button">
                  <a href="#" class="button medium orange">Sign up</a>
              </div>                   
          </div>
          
          <!-- begin of pricing column4 -->
          <div class="pricing-column">
              <h5 class="pricing-title">Enterprise</h5>
              <div class="pricing-price">
                  <h1>$99<span>/ Month</span></h1>
              </div>                    
              <ul class="pricing-feature">
                  <li>Up to 200 users</li>
                  <li>Limited voters &amp; votes</li>
                  <li>Limited ideas, comments</li>
                  <li>Moderation tools</li>
                  <li>Multiple sign-in / singup options</li>
                  <li>Widget tracking</li>
              </ul>
              <div class="pricing-description">Best for starter teams</div>                
              <div class="pricing-button">
                  <a href="#" class="button small gray">Sign up</a>
              </div>                   
          </div>
        </div>
        <!-- Pricing Wrapper End -->
        
        <div class="clear"></div>
        
        <!-- Promo Box -->
        <div class="promobox">
          <!-- Promo Box Left -->
          <div class="promo_text eight columns">
            <img src="images/clip.png" alt="" class="alignleft" />
            <p>Included in All Packages: 1 IP address + Unmetered Traffic + Rock Solid Network + 24h Support for Hardware and Network</p>
          </div>
          <!-- Promo Box Right -->
          <div class="promo_contact four columns">
            <img src="images/quote_phone.png" alt="" class="alignleft" />
            <p>Need Custom Plans?</p>
            <h3>+62 12334566</h3>
          </div>
         </div>
         <!-- Promo Box End -->
          
        </div>
      </div> <!-- Row End -->
      
      
      <div class="row">
        <!-- Welcome Section -->
        <div class="six columns">
            <h4>Welcome to Our Site</h4>
            <p>Sed tempor elit at ligula blandit vestibulum. Duis congue arcu non metus tincidunt adipiscing. Sed in massa at metus congue tincidunt quis eu felis. Morbi euismod consequat nisi, at congue orci vestibulum ac. Etiam consequat convallis mi, id ornare erat ullamcorper nec. Donec quis lorem non elit ultricies rutrum. Donec tristique semper lorem et porta. Vivamus egestas sodales consequat.</p>
            <ul class="check">
              <li>Pellentesque tempor euismod quam in facilisis</li>
              <li>Integer a odio ac arcu iaculis ultricies quis eu eros</li>
              <li>tristique aliquet euismod tellus diam ac </li>
            </ul>
        </div>
        <!-- Welcome Section End -->
        
        <!-- Testimonials Section -->
        <div class="six columns">
            <h4>Testimonials</h4>
            <div class="testi-container">                        	
              <div class="testi-text">
                <blockquote>
                  <p>Proin dignissim lacinia consequat vehicula eros vel tellus id metus tempor accumsan congue velit vitae tellus accumsan rutrum. Proin est metus, mollis vitae scelerisque ac, sollicitudin non diam.</p>
                </blockquote>                                                         
              </div>
              <div class="clear"></div>                                                                      
            </div>
            <div class="testi-baloon"></div>
            <div class="testi-image">
              <img src="images/testi-people.jpg" alt="" />                                                                      
            </div>
            <div class="testi-name">Jake Wood<br/><span class="company-name">Silver Arrow Corp</span></div>        
        </div>
        <!-- Testimonial Section End -->  
      </div>
      
  </div>
  <!-- Homepage Content End -->
  
  <div class="clear"></div>
  
  <!-- Bottom Bar -->
   <div id="bottombar">
    <div class="row">
      <div class="twelve columns">
        <!-- Client List -->
        <div class="client-list">
          <a href="#"><img src="images/client-logo.png" alt="" /></a>
          <a href="#"><img src="images/client-logo.png" alt="" /></a>
          <a href="#"><img src="images/client-logo.png" alt="" /></a>
          <a href="#"><img src="images/client-logo.png" alt="" /></a>
          <a href="#"><img src="images/client-logo.png" alt="" /></a>
          <a href="#"><img src="images/client-logo.png" alt="" /></a>
          <a href="#"><img src="images/client-logo.png" alt="" /></a>
          <a href="#"><img src="images/client-logo.png" alt="" /></a>
          <a href="#"><img src="images/client-logo.png" alt="" /></a>
        </div>   
        <!-- Welcome Section End -->     
      </div>
    </div>
  </div>
  <!-- Bottom Bar End -->
  
  <!-- Footer -->
  <footer>
    <div class="row">
      <!-- About Us -->
      <div class="three columns">
        <h5>About Us</h5>
        <a href="http://localhost/myhosting"><img src="images//logo.png" alt="Logo"/></a>
        <p>Maecenas faucibus mauris et elit molestie dapibus dolor bibendum ut pretium tellus tristique adipiscing eros vitae arcu gravida justo</p>
      </div>
      <!-- About Us End -->
      
      <!-- Latest News -->
      <div class="three columns">
      <h5>Latest News</h5>
      <ul class="latestnews">
        <li>
          <img src="images/blog-thumb1.jpg" alt="" class="alignleft"/>
          <a href="single.html">Integer sodales enim at sem fringilla et ullamcorper dui lobortis</a>
          <p class="newsdate">November 8, 2012</p>
          <div class="clear"></div>
        </li>
        <li>
          <img src="images/blog-thumb2.jpg" alt="" class="alignleft"/>
          <a href="single.html">Quisque quis tempus mauris</a>
          <p class="newsdate">October 8, 2012</p>
          <div class="clear"></div>
        </li>
          <li>
          <img src="images/blog-thumb3.jpg" alt="" class="alignleft"/>
          <a href="single.html">Pellentesque scelerisque lectus sed quam imperdiet sit amet lacus</a>
          <p class="newsdate">September 8, 2012</p>
          <div class="clear"></div>
        </li>
      </ul>
    </div>
    
    <div class="three columns">
    <!-- Twitter -->
    	<h5>Twitter Update!</h5>      
      <div id="twitter"></div>
      <!-- Noscript Notification when your Javascript not active -->
      <div id="twitter-noscript">                	
          <p>Hi, your javascript is off..!! Please enable javascript in your browser</p>
      </div>
      <!-- End of Noscript Notification when your Javascript not active -->
    </div>
    
    <!-- Contact Information -->
    <div class="three columns">
      <h5>Contact Information</h5>
      <ul class="contactlist">
        <li class="home">Jln. jalan terus no.15, Pemalang, Jawa Tengah 52354, Indonesia Raya</li>
        <li class="phone">+62 123456789</li>
        <li class="phone2">+62 987456123</li>
        <li class="mail"><a href="mailto:imediapixel@gmail.com">imediapixel@gmail.com</a></li>
        <li class="help"><a href="mailto:support@myhosting.com">support@myhosting.com</a></li>
      </ul>
    </div>
    <!-- Contact Information End -->
    
  </div>
  
  <!-- Bottom -->
  <div id="bottom">
    <div class="row">
      <div class="six columns">
         <!-- Social Links -->
        <div class="social-links">
          <ul>
            <li><a href="#"><img src="images/link_linkedin.png" alt=""/>Linkedin</a></li>
            <li><a href="http://twitter.com/imediapixel"><img src="images/link_twitter.png" alt=""/>Twitter</a></li>
            <li><a href="#"><img src="images/link_facebook.png" alt=""/>Facebook</a></li>
            <li><a href="#"><img src="images/link_googleplus.png" alt=""/>Googleplus</a></li>
            <li><a href="#"><img src="images/link_rss.png" alt=""/>RSS</a></li>
          </ul>
        </div>
      </div>
      
      <div class="six columns">
        <!-- Site Copyright -->
        <div class="copyright">
          &copy; Copyright 2008 - 2012 <a href="http://themeforest.net/user/?ref=imediapixel">IMediapixel.com</a>          </div>
      </div>
    </div>
  </div>
  <!-- Bottom End-->
  
  </footer>
  <!-- Footer End -->
  
  <script>$('#noscript').remove();</script>  
</body>
</html>