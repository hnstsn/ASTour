<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta charset="utf-8" />
	<title>AStour</title>
	<meta name="keywords" content="HTML5,CSS3,Template" />
	<meta name="description" content="" />
	<meta name="Author" content="Dorin Grigoras [www.stepofweb.com]" />

	<!-- mobile settings -->
	<meta name="viewport" content="width=device-width, maximum-scale=1, initial-scale=1, user-scalable=0" />
	
	<!-- AST : bootstrap을 위한 것들을 모아놓은  jsp page -->
	<%@ include file="include/bootstap_collect.jsp" %>

</head>
<body><!-- Available classes for body: boxed , pattern1...pattern10 . Background Image - example add: data-background="assets/images/boxed_background/1.jpg"  -->

	<!-- AST : menu부분을 위한 jsp page -->
	<%@ include file="include/menu.jsp" %>

	<!-- WRAPPER -->
	<div id="wrapper">
			
	<!-- REVOLUTION SLIDER -->
	<div class="fullwidthbanner-container roundedcorners">
		<div class="fullwidthbanner">
			<ul>	
	
				<!-- SLIDE  -->
				<li data-transition="fade" data-slotamount="7" data-masterspeed="1500">
	
					<!-- COVER IMAGE -->
					<img src="resources/assets/images/demo/revolution_slider/sliderbg.jpg" alt="" data-bgfit="cover" data-bgposition="left top" data-bgrepeat="no-repeat">
	
					<!-- LAYER NR. 1 -->
					<div class="tp-caption lightgrey_divider skewfromrightshort customout"
						data-x="85"
						data-y="224"
						data-customout="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0.75;scaleY:0.75;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
						data-speed="500"
						data-start="1200"
						data-easing="Power4.easeOut"
						data-endspeed="500"
						data-endeasing="Power4.easeIn"
						data-captionhidden="off"
						style="z-index: 2">
					</div>
	
					<!-- LAYER NR. 2 -->
					<div class="tp-caption customin customout"
						data-x="right" data-hoffset="-220"
						data-y="bottom" data-voffset="0"
						data-customin="x:50;y:150;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0.5;scaleY:0.5;skewX:0;skewY:0;opacity:0;transformPerspective:0;transformOrigin:50% 50%;"
						data-customout="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0.75;scaleY:0.75;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
						data-speed="800"
						data-start="700"
						data-easing="Power4.easeOut"
						data-endspeed="500"
						data-endeasing="Power4.easeIn"
						style="z-index: 3"><img src="resources/assets/images/demo/revolution_slider/desktop_slider_2.png" alt="">
					</div>
	
					<!-- LAYER NR. 2 -->
					<div class="tp-caption customin customout"
						data-x="right" data-hoffset="-100"
						data-y="bottom" data-voffset="0"
						data-customin="x:50;y:150;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0.5;scaleY:0.5;skewX:0;skewY:0;opacity:0;transformPerspective:0;transformOrigin:50% 50%;"
						data-customout="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0.75;scaleY:0.75;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
						data-speed="1500"
						data-start="700"
						data-easing="Elastic.easeInOut"
						data-endspeed="500"
						data-endeasing="Power1.easeIn"
						style="z-index: 3"><img src="resources/assets/images/demo/revolution_slider/slider_run.png" alt="">
					</div>
	
					<!-- LAYER NR. 3 -->
					<div class="tp-caption large_bold_grey skewfromrightshort customout"
						data-x="80"
						data-y="66"
						data-customout="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0.75;scaleY:0.75;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
						data-speed="500"
						data-start="800"
						data-easing="Back.easeOut"
						data-endspeed="500"
						data-endeasing="Power4.easeIn"
						data-captionhidden="off"
						style="z-index: 4">Powerful
					</div>
	
					<!-- LAYER NR. 4 -->
					<div class="tp-caption large_bold_grey skewfromleftshort customout"
						data-x="80"
						data-y="122"
						data-customout="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0.75;scaleY:0.75;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
						data-speed="300"
						data-start="1100"
						data-easing="Back.easeOut"
						data-endspeed="500"
						data-endeasing="Power4.easeIn"
						data-captionhidden="off"
						style="z-index: 7">Multipurpose
					</div>
	
					<!-- LAYER NR. 5 -->
					<div class="tp-caption small_thin_grey customin customout"
						data-x="80"
						data-y="230"
						data-customin="x:0;y:100;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:1;scaleY:3;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:0% 0%;"
						data-customout="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0.75;scaleY:0.75;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
						data-speed="500"
						data-start="1300"
						data-easing="Power4.easeOut"
						data-endspeed="500"
						data-endeasing="Power4.easeIn"
						data-captionhidden="off"
						style="z-index: 8">
						Atropos Multipurpose Template, now offering you<br /> 
						over 110 html pages fully customizable and very<br /> 
						easy to use! <strong>Lifetime free update!</strong><br />
						<a href="index-more.html">Read more...</a>
					</div>
	
					<!-- LAYER NR. 6 -->
					<div class="tp-caption large_bold_darkblue skewfromleftshort customout"
						data-x="80" data-hoffset="-90"
						data-y="350"
						data-customout="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0.75;scaleY:0.75;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
						data-speed="500"
						data-start="1600"
						data-easing="Back.easeOut"
						data-endspeed="500"
						data-endeasing="Power4.easeIn"
						data-captionhidden="off"
						style="z-index: 10">110+
					</div>
	
					<!-- LAYER NR. 7 -->
					<div class="tp-caption medium_bg_darkblue skewfromleftshort customout"
						data-x="80" data-hoffset="-90"
						data-y="410"
						data-customout="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0.75;scaleY:0.75;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
						data-speed="500"
						data-start="1650"
						data-easing="Back.easeOut"
						data-endspeed="500"
						data-endeasing="Power4.easeIn"
						data-captionhidden="off"
						style="z-index: 11">Html Pages
					</div>
	
					<div class="tp-caption medium_bold_orange skewfromleftshort customout start font300"
						data-x="230" data-hoffset="-90"
						data-y="370"
						data-customout="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0.75;scaleY:0.75;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
						data-speed="500"
						data-start="1850"
						data-easing="Back.easeOut"
						data-endspeed="500"
						data-endeasing="Power4.easeIn"
						data-captionhidden="off"
						style="z-index: 13;">Fully <strong>Responsive</strong>
					</div>
	
					<!-- LAYER NR. 8 -->
					<div class="tp-caption medium_bg_orange skewfromleftshort customout"
						data-x="230" data-hoffset="-90"
						data-y="410"
						data-customout="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0.75;scaleY:0.75;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
						data-speed="500"
						data-start="2300"
						data-easing="Back.easeOut"
						data-endspeed="500"
						data-endeasing="Power4.easeIn"
						data-captionhidden="off"
						style="z-index: 21">Customizable Pages
					</div>
	
				</li>
	
				<!-- SLIDE  -->
				<li data-transition="3dcurtain-vertical" data-slotamount="14"  data-masterspeed="300" data-delay="10000">
	
					<!-- COVER IMAGE -->
					<img src="resources/assets/images/demo/revolution_slider/slider7.jpg" alt="" data-bgfit="cover" data-bgposition="left top" data-bgrepeat="no-repeat" />
	
					<div class="tp-caption lft boxshadow" 
						data-x="70" 
						data-y="70" 
						data-speed="900" 
						data-start="500" 
						data-easing="easeOutBack">
						<iframe src='http://player.vimeo.com/video/8408210?title=0&amp;byline=0&amp;portrait=0;api=1' width='640' height='360' style='width:640px; height:360px;'></iframe>
					</div>
	
					<div class="tp-caption sft large_bold_grey" 
						data-x="750" 
						data-y="70" 
						data-speed="300" 
						data-start="1200" 
						data-easing="easeOutExpo">FEATURED
					</div>
	
					<div class="tp-caption sft modern_big_redbg" 
						data-x="750" 
						data-y="164" 
						data-speed="300" 
						data-start="1300" 
						data-easing="easeOutExpo">Best With Atropos
					</div>
	
					<div class="tp-caption lfb thinheadline_dark" 
						data-x="750" 
						data-y="210" 
						data-speed="300" 
						data-start="1400" 
						data-easing="easeOutExpo">You can easily add
					</div>
	
					<div class="tp-caption lfb thinheadline_dark" 
						data-x="750" 
						data-y="244" 
						data-speed="300" 
						data-start="1500" 
						data-easing="easeOutExpo">Vimeo &amp; Youtube Videos
					</div>
	
					<div class="tp-caption lfb thinheadline_dark" 
						data-x="750" 
						data-y="278" 
						data-speed="300" 
						data-start="1600" 
						data-easing="easeOutExpo">to your Slides
					</div>
	
					<div class="tp-caption lfb medium_bg_darkblue" 
						data-x="750" 
						data-y="390" 
						data-speed="300" 
						data-start="1600" 
						data-easing="easeOutExpo"><i class="fa fa-html5"></i> HTML5
					</div>
	
					<div class="tp-caption lfb medium_bg_orange" 
						data-x="860" 
						data-y="390" 
						data-speed="300" 
						data-start="1600" 
						data-easing="easeOutExpo"><i class="fa fa-css3"></i> CSS3
					</div>
	
				</li>
	
				<!-- SLIDE -->
				<li data-transition="incube-horizontal" data-slotamount="5" data-masterspeed="700" >
	
					<!-- COVER IMAGE -->
					<img src="resources/assets/images/demo/revolution_slider/church_parallax.jpg" alt="" data-bgfit="cover" data-bgposition="left top" data-bgrepeat="no-repeat">
	
					<div class="tp-caption large_text sft"
						data-x="center"
						data-y="130"
						data-speed="300"
						data-start="1000"
						data-endspeed="500"
						data-easing="easeOutBack"><h1>ATROPOS</h1>
					</div>
	
					<div class="tp-caption large_text sft"
						data-x="center"
						data-y="260"
						data-speed="300"
						data-start="1700"
						data-endspeed="500"
						data-easing="easeOutBack"><h2>MULTIPURPOSE TEMPLATE</h2>
					</div>
	
					<div class="tp-caption large_text sft"
						data-x="center"
						data-y="360"
						data-customin="x:-150;y:-280;z:0;rotationX:-140;rotationY:-280;rotationZ:-220;scaleX:1.5;scaleY:0;skewX:57;skewY:60;opacity:0;transformPerspective:600;transformOrigin:120% 190%;"
						data-customout="x:-450;y:-430;z:-30;rotationX:90;rotationY:-290;rotationZ:-20;scaleX:1;scaleY:2.8;skewX:59;skewY:4;opacity:0;transformPerspective:600;transformOrigin:70% 0%;"
						data-speed="1500"
						data-endspeed="500"
						data-start="2700"
						data-endeasing="Bounce.easeOut"
						data-easing="Back.easeInOut">
						<a class="btn btn-primary btn-lg" target="_blank" href="https://wrapbootstrap.com/theme/atropos-responsive-website-template-WB05SR527">BUY ATROPOS</a>
					</div>
	
				</li>
	
				<!-- SLIDE  -->
				<li data-transition="fade" data-slotamount="7" data-masterspeed="1000" data-delay="13000" >
					<!-- MAIN IMAGE -->
					<img src="resources/assets/images/demo/revolution_slider/text_slider.jpg"  alt="newslide2014_1"  data-bgposition="center top" data-bgfit="cover" data-bgrepeat="no-repeat">
					<!-- LAYERS -->
			
					<!-- LAYER NR. 1 -->
					<div class="tp-caption finewide_large_white customin customout tp-resizeme"
						data-x="center" data-hoffset="0"
						data-y="center" data-voffset="-40"
						data-customin="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:0;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
						data-customout="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:0;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
						data-speed="500"
						data-start="500"
						data-easing="Power3.easeInOut"
						data-splitin="chars"
						data-splitout="chars"
						data-elementdelay="0.08"
						data-endelementdelay="0.08"
						data-end="4000"
						data-endspeed="500"
						style="z-index: 2; max-width: auto; max-height: auto; white-space: nowrap;">ATROPOS
					</div>
	
			
					<!-- LAYER NR. 3 -->
					<div class="tp-caption finewide_medium_white randomrotate customout tp-resizeme"
						data-x="center" data-hoffset="0"
						data-y="center" data-voffset="30"
						data-customout="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:0;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
						data-speed="500"
						data-start="500"
						data-easing="Power3.easeInOut"
						data-splitin="chars"
						data-splitout="chars"
						data-elementdelay="0.08"
						data-endelementdelay="0.08"
						data-end="4000"
						data-endspeed="500"
						style="z-index: 4; max-width: auto; max-height: auto; white-space: nowrap;">FRESH NEW VERSION
					</div>
			
					<!-- LAYER NR. 4 -->
					<div class="tp-caption boldwide_small_white customin customout tp-resizeme"
						data-x="240"
						data-y="120" 
						data-customin="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:0;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
						data-customout="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:0;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
						data-speed="300"
						data-start="5000"
						data-easing="Power3.easeInOut"
						data-splitin="none"
						data-splitout="none"
						data-elementdelay="0.08"
						data-endelementdelay="0.08"
						data-endspeed="300"
						style="z-index: 5; max-width: auto; max-height: auto; white-space: nowrap;"><strong>Atropos</strong>
					</div>
			
					<!-- LAYER NR. 5 -->
					<div class="tp-caption whitedivider3px_vertical customin tp-resizeme"
						data-x="420"
						data-y="110" 
						data-customin="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:0;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
						data-speed="300"
						data-start="5500"
						data-easing="Power3.easeInOut"
						data-splitin="none"
						data-splitout="none"
						data-elementdelay="0.1"
						data-endelementdelay="0.1"
						data-endspeed="300"
						style="z-index: 6; max-width: auto; max-height: auto; white-space: nowrap;">&nbsp;
					</div>
			
					<!-- LAYER NR. 6 -->
					<div class="tp-caption finewide_small_white randomrotate customout tp-resizeme"
						data-x="460"
						data-y="120" 
						data-customout="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:0;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
						data-speed="500"
						data-start="6400"
						data-easing="Power3.easeInOut"
						data-splitin="chars"
						data-splitout="chars"
						data-elementdelay="0.08"
						data-endelementdelay="0.08"
						data-endspeed="300"
						style="z-index: 7; max-width: auto; max-height: auto; white-space: nowrap;">POWERFUL
					</div>
			
					<!-- LAYER NR. 7 -->
					<div class="tp-caption finewide_small_white customin customout tp-resizeme"
						data-x="460"
						data-y="160" 
						data-customin="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:0;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
						data-customout="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:0;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
						data-speed="500"
						data-start="7200"
						data-easing="Power3.easeInOut"
						data-splitin="words"
						data-splitout="words"
						data-elementdelay="0.12"
						data-endelementdelay="0.12"
						data-endspeed="300"
						style="z-index: 8; max-width: auto; max-height: auto; white-space: nowrap;">MULTIPURPOSE
					</div>
			
					<!-- LAYER NR. 8 -->
					<div class="tp-caption finewide_small_white customin customout tp-resizeme"
						data-x="460"
						data-y="200" 
						data-customin="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:0;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
						data-customout="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:0;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
						data-speed="500"
						data-start="8000"
						data-easing="Power3.easeInOut"
						data-splitin="none"
						data-splitout="none"
						data-elementdelay="0.08"
						data-endelementdelay="0.08"
						data-endspeed="300"
						style="z-index: 9; max-width: auto; max-height: auto; white-space: nowrap;">V1.2
					</div>
			
					<!-- LAYER NR. 9 -->
					<div class="tp-caption finewide_verysmall_white_mw customin customout tp-resizeme"
						data-x="460"
						data-y="250" 
						data-customin="x:0;y:50;z:0;rotationX:-120;rotationY:0;rotationZ:0;scaleX:1;scaleY:1;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 0%;"
						data-customout="x:0;y:0;z:0;rotationX:0;rotationY:0;rotationZ:0;scaleX:0;scaleY:0;skewX:0;skewY:0;opacity:0;transformPerspective:600;transformOrigin:50% 50%;"
						data-speed="900"
						data-start="8000"
						data-easing="Power3.easeInOut"
						data-splitin="lines"
						data-splitout="lines"
						data-elementdelay="0.2"
						data-endelementdelay="0.08"
						data-endspeed="300"
						style="z-index: 10; max-width: auto; max-height: auto; white-space: nowrap;">
							Atropos is a multipurpose template for<br /> 
							business or portfolio website. It is <br />
							fully responsive design ready for<br /> 
							PC, Tablet and Mobile.
					</div>
			
				</li>
	
				<!-- SLIDE  -->
				<li data-transition="boxslide" data-slotamount="5" data-link="https://wrapbootstrap.com/theme/atropos-responsive-website-template-WB05SR527" data-target="_blank" data-slideindex="back">
	
					<!-- COVER IMAGE -->
					<img src="resources/assets/images/demo/revolution_slider/5378467111_e8b9e98f8f_o.jpg" alt="" data-bgfit="cover" data-bgposition="left top" data-bgrepeat="no-repeat" />
	
					<div class="tp-caption very_large_text lfl stl"
						data-x="right" data-hoffset="-30"
						data-y="293"
						data-speed="300"
						data-start="500"
						data-easing="easeOutExpo" 
						data-endspeed="300" 
						data-endeasing="easeInSine">ATROPOS PORTFOLIO
					</div>
	
					<div class="tp-caption large_bold_grey medium_thin_grey lfl stl"
						data-x="right" data-hoffset="-30"
						data-y="260"
						data-speed="300"
						data-start="800"
						data-easing="easeOutExpo" 
						data-endspeed="300" 
						data-endeasing="easeInSine">
						<a target="_blank" href="https://wrapbootstrap.com/theme/atropos-responsive-website-template-WB05SR527">BUY NOW ATROPOS</a>
					</div>
	
					<div class="tp-caption randomrotate"
						data-x="48"
						data-y="131"
						data-speed="600"
						data-start="1100"
						data-easing="easeOutExpo">
						<img src="resources/assets/images/demo/portfolio/slider/1.jpg" width="140" height="140" alt="Image 2">
					</div>
	
					<div class="tp-caption randomrotate"
						data-x="90"
						data-y="206"
						data-speed="600"
						data-start="1200"
						data-easing="easeOutExpo">
						<img src="resources/assets/images/demo/portfolio/slider/2.jpg" width="140" height="140" alt="Image 3">
					</div>
	
					<div class="tp-caption randomrotate"
						data-x="205"
						data-y="140"
						data-speed="600"
						data-start="1300"
						data-easing="easeOutExpo">
						<img src="resources/assets/images/demo/portfolio/slider/3.jpg" width="140" height="140" alt="Image 4">
					</div>
	
					<div class="tp-caption randomrotate"
						data-x="188"
						data-y="246"
						data-speed="300"
						data-start="1400"
						data-easing="easeOutExpo">
						<img src="resources/assets/images/demo/portfolio/slider/4.jpg" width="140" height="140" alt="Image 5">
					</div>
	
					<div class="tp-caption randomrotate"
						data-x="55"
						data-y="316"
						data-speed="600"
						data-start="1500"
						data-easing="easeOutExpo">
						<img src="resources/assets/images/demo/portfolio/slider/5.jpg" width="140" height="140" alt="Image 6">
					</div>
	
					<div class="tp-caption randomrotate"
						data-x="173"
						data-y="329"
						data-speed="300"
						data-start="1600"
						data-easing="easeOutExpo">
						<img src="resources/assets/images/demo/portfolio/slider/6.jpg" width="140" height="140" alt="Image 7">
					</div>
	
					<div class="tp-caption randomrotate"
						data-x="255"
						data-y="294"
						data-speed="300"
						data-start="1700"
						data-easing="easeOutExpo">
						<img src="resources/assets/images/demo/portfolio/slider/7.jpg" width="140" height="140" alt="Image 8">
					</div>
	
					<div class="tp-caption randomrotate"
						data-x="275"
						data-y="166"
						data-speed="300"
						data-start="1800"
						data-easing="easeOutExpo">
						<img src="resources/assets/images/demo/portfolio/slider/8.jpg" width="140" height="140" alt="Image 9">
					</div>
	
					<div class="tp-caption randomrotate"
						data-x="84"
						data-y="113"
						data-speed="300"
						data-start="1900"
						data-easing="easeOutExpo">
						<img src="resources/assets/images/demo/portfolio/slider/5.jpg" width="140" height="140" alt="Image 10">
					</div>
	
					<div class="tp-caption randomrotate"
						data-x="26"
						data-y="225"
						data-speed="300"
						data-start="2000"
						data-easing="easeOutExpo">
						<img src="resources/assets/images/demo/portfolio/slider/4.jpg" width="140" height="140" alt="Image 11">
					</div>
	
					<div class="tp-caption randomrotate"
						data-x="110"
						data-y="187"
						data-speed="300"
						data-start="2100"
						data-easing="easeOutExpo">
						<img src="resources/assets/images/demo/portfolio/slider/3.jpg" width="140" height="140" alt="Image 12">
					</div>
	
					<div class="tp-caption randomrotate"
						data-x="183"
						data-y="221"
						data-speed="300"
						data-start="2200"
						data-easing="easeOutExpo">
						<img src="resources/assets/images/demo/portfolio/slider/2.jpg" width="140" height="140" alt="Image 13">
					</div>
				</li>
	
				<!-- SLIDE  -->
				<li data-transition="3dcurtain-vertical" ddata-slotamount="15" data-masterspeed="300" data-delay="9400">
	
					<!-- COVER IMAGE -->
					<img src="resources/assets/images/demo/revolution_slider/sliderbg.jpg" alt="" data-bgfit="cover" data-bgposition="left top" data-bgrepeat="no-repeat">
	
					<div class="tp-caption large_bold_grey lfl stl"
						data-x="18"
						data-y="233"
						data-speed="300"
						data-start="500"
						data-easing="easeOutExpo" data-end="8800" data-endspeed="300" data-endeasing="easeInSine">ATROPOS SHOP
					</div>
	
					<div class="tp-caption large_bold_grey medium_thin_grey lfl stl"
						data-x="18"
						data-y="200"
						data-speed="300"
						data-start="800"
						data-easing="easeOutExpo" data-end="9100" data-endspeed="300" data-endeasing="easeInSine">
						<a target="_blank" href="https://wrapbootstrap.com/theme/atropos-responsive-website-template-WB05SR527">BUY NOW ATROPOS</a>
					</div>
	
					<div class="tp-caption lft"
						data-x="right" data-hoffset="-20"
						data-y="0"
						data-speed="600"
						data-start="1100"
						data-easing="easeOutExpo" data-end="3100" data-endspeed="600" data-endeasing="easeInSine">
						<a href="shop-product-full-width.html"><img src="resources/assets/images/demo/shop/slider/1.jpg" alt="Image 1"></a>
					</div>
	
					<div class="tp-caption medium_bg_darkblue sft stb"
						data-x="720"
						data-y="200"
						data-speed="300"
						data-start="1400"
						data-easing="easeOutExpo" data-end="3300" data-endspeed="300" data-endeasing="easeInSine">MAN CHERRY SHIRT
					</div>
	
					<div class="tp-caption medium_bg_orange sfb stb"
						data-x="720"
						data-y="160"
						data-speed="300"
						data-start="1700"
						data-easing="easeOutExpo" data-end="3200" data-endspeed="300" data-endeasing="easeInSine">$ 7.49
					</div>
	
					<div class="tp-caption lft ltb"
						data-x="right" data-hoffset="-20"
						data-y="0"
						data-speed="600"
						data-start="3600"
						data-easing="easeOutExpo" data-end="5600" data-endspeed="600" data-endeasing="easeInSine">
						<a href="shop-product-full-width.html"><img src="resources/assets/images/demo/shop/slider/5.jpg" alt="Image 2"></a>
					</div>
	
					<div class="tp-caption medium_bg_darkblue sft stb"
						data-x="720"
						data-y="200"
						data-speed="300"
						data-start="3900"
						data-easing="easeOutExpo" data-end="5800" data-endspeed="300" data-endeasing="easeInSine">YELLOW WOMAN DRESS
					</div>
	
					<div class="tp-caption medium_bg_orange sfb stb"
						data-x="720"
						data-y="160"
						data-speed="300"
						data-start="4200"
						data-easing="easeOutExpo" data-end="5700" data-endspeed="300" data-endeasing="easeInSine">$ 5.99
					</div>
	
					<div class="tp-caption lft ltb"
						data-x="right" data-hoffset="-20"
						data-y="0"
						data-speed="600"
						data-start="6100"
						data-easing="easeOutExpo" data-end="8100" data-endspeed="300" data-endeasing="easeInSine">
						<a href="shop-product-full-width.html"><img src="resources/assets/images/demo/shop/slider/9.jpg" alt="Image 3"></a>
					</div>
	
					<div class="tp-caption medium_bg_darkblue sft stb"
						data-x="720"
						data-y="200"
						data-speed="300"
						data-start="6400"
						data-easing="easeOutExpo" data-end="8300" data-endspeed="300" data-endeasing="easeInSine">COOL RED CHIAR
					</div>
	
					<div class="tp-caption medium_bg_orange sfb stb"
						data-x="720"
						data-y="160"
						data-speed="300"
						data-start="6700"
						data-easing="easeOutExpo" data-end="8200" data-endspeed="300" data-endeasing="easeInSine">$ 6.79
					</div>
	
				</li>
	
				<!-- SLIDE -->
				<li data-transition="curtain-2" data-slotamount="5" data-masterspeed="700">
	
					<!-- COVER IMAGE -->
					<img src="resources/assets/images/demo/revolution_slider/slider7.jpg" alt="" data-bgfit="cover" data-bgposition="left top" data-bgrepeat="no-repeat">
	
					<div class="tp-caption large_text sft"
						data-x="center"
						data-y="100"
						data-speed="300"
						data-start="800"
						data-easing="easeOutExpo">TODAY BEST DEAL
					</div>
	
					<div class="tp-caption medium_bold_red medium_light_red sfr"
						data-x="center"
						data-y="75"
						data-speed="300"
						data-start="1100"
						data-easing="easeOutExpo">
						<a href="https://wrapbootstrap.com/theme/atropos-responsive-website-template-WB05SR527" target="_blank">PURCHASE NOW ATROPOS</a>
					</div>
	
					<div class="tp-caption lfb text-center" 
						data-x="270" 
						data-y="200" 
						data-speed="900" 
						data-start="1700" 
						data-easing="easeOutBack">
						<a class="fsize20" href="shop-product-full-width.html">
							<img class="block hover-scale" src="resources/assets/images/demo/shop/7.jpg" width="200" height="200" alt="" />
							<strong>$ 32.00</strong>
						</a>
					</div>
	
					<div class="tp-caption lfb text-center" 
						data-x="480" 
						data-y="200" 
						data-speed="900" 
						data-start="2000" 
						data-easing="easeOutBack">
						<a class="fsize20" href="shop-product-full-width.html">
							<img class="block hover-scale" src="resources/assets/images/demo/shop/5.jpg" width="200" height="200" alt="" />
							<strong>$ 45.87</strong>
						</a>
					</div>
	
					<div class="tp-caption lfb text-center" 
						data-x="690" 
						data-y="200" 
						data-speed="900" 
						data-start="2300" 
						data-easing="easeOutBack">
						<a class="fsize20" href="shop-product-full-width.html">
							<img class="block hover-scale" src="resources/assets/images/demo/shop/1.jpg" width="200" height="200" alt="" />
							<strong>$ 64.00</strong>
						</a>
					</div>
				</li>
	
				<!-- SLIDER -->
				<li data-transition="fade" data-slotamount="7" data-masterspeed="300" >
					<img src="resources/assets/images/dummy.png"  alt="church1" data-lazyload="assets/images/demo/home/church_1.jpg" data-fullwidthcentering="on">
					<div class="tp-caption medium_text lft"
					data-x="90" 
					data-y="180"
					data-speed="300" 
					data-start="500" 
					data-easing="easeOutExpo">Religion and Church
					</div>
	
					<div class="tp-caption large_text lfb"
					data-x="90" 
					data-y="222"
					data-speed="300" 
					data-start="800" 
					data-easing="easeOutExpo">Giving you guidance and light <br/> during lifes uncertainty.
					</div>
	
					<div class="tp-caption lfb"
					data-x="90" 
					data-y="330"
					data-speed="300" 
					data-start="1100" 
					data-easing="easeOutExpo">
					<a href="https://wrapbootstrap.com/theme/atropos-responsive-website-template-WB05SR527" target="_blank" class="btn btn-primary btn-lg">Buy This Theme</a>
					</div>
				</li>
	
			</ul>
			<div class="tp-bannertimer"></div>
		</div>
	</div>
	<!-- /REVOLUTION SLIDER -->
	
	
	
	
	<!-- WELCEOME -->
	<section class="container">
		<h1 class="text-center">
			<strong>Welcome</strong> to ASTour
		</h1>
	
		<div class="divider"><!-- divider -->
			<i class="fa fa-star"></i>
		</div>
	
		<!-- <p class="lead">여기다가 무엇을 적을까?</p>
	
		<hr />separator -->
	
		<!-- FEATURED BOXES 4 -->
		<div class="row featured-box-minimal margin-bottom30">
			<div class="col-md-4">
				<h4><i class="fa fa-group"></i> Development</h4>
				<p>조회수 금은동 트로피 - 리뷰</p>
			</div>
			<div class="col-md-4">
				<h4> <i class="fa fa-book"></i> HTML5</h4>
				<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque rutrum pellentesque imperdiet. Nulla lacinia iaculis nulla.</p>
			</div>
			<div class="col-md-4">
				<h4><i class="fa fa-trophy"></i> CSS3</h4>
				<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque rutrum pellentesque imperdiet. Nulla lacinia iaculis nulla.</p>
			</div>
		</div>
		<!-- /FEATURED BOXES 4 -->
	
		<!-- FEATURED BOXES 4 -->
		<div class="row featured-box-minimal margin-bottom30">
			<div class="col-md-4">
				<h4><i class="fa fa-group"></i> Customer Support</h4>
				<p>평점순 금은동 트로피 - 리뷰</p>
			</div>
			<div class="col-md-4">
				<h4> <i class="fa fa-book"></i> Sliders</h4>
				<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque rutrum pellentesque imperdiet. Nulla lacinia iaculis nulla.</p>
			</div>
			<div class="col-md-4">
				<h4><i class="fa fa-trophy"></i> Elite</h4>
				<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque rutrum pellentesque imperdiet. Nulla lacinia iaculis nulla.</p>
			</div>
		</div>
		<!-- /FEATURED BOXES 4 -->
	
	</section>
	<!-- /WELCOME -->
	
	<!-- PORTFOLIO -->
	<section id="portfolio" class="special-row padding100 margin-top100 margin-footer">
		<div class="container">
	
			<div class="row">
	
				<ul class="sort-destination isotope" data-sort-id="isotope-list">
	
					<li class="isotope-item col-sm-6 col-md-4 development"><!-- item -->
						<div class="item-box">
							<figure>
								<a class="item-hover lightbox" href="assets/images/demo/portfolio/scouter.jpg" data-plugin-options='{"type":"image"}'>
									<span class="overlay color2"></span>
									<span class="inner">
										<span class="block fa fa-plus fsize20"></span>
										<strong>VIEW</strong> IMAGE 
									</span>
								</a>
								<img class="img-responsive" src="resources/assets/images/demo/portfolio/scouter-600x403.jpg" width="260" height="260" alt="">
							</figure>
							<div class="item-box-desc">
								<h4>관리자제공 - 메인페이지 하단에 3개의 이미지부분은 명소 top3</h4>
								<small class="styleColor">클릭하면 페이지 전환(날짜 X)</small>
							</div>
						</div>
					</li>
	
					<li class="isotope-item col-sm-6 col-md-4 photography"><!-- item 2 -->
						<div class="item-box">
							<figure>
								<a class="item-hover lightbox" href="http://www.youtube.com/watch?v=W7Las-MJnJo" data-plugin-options='{"type":"iframe"}'>
									<span class="overlay color2"></span>
									<span class="inner">
										<span class="block fa fa-plus fsize20"></span>
										<strong>VIEW</strong> VIDEO
									</span>
								</a>
								<img class="img-responsive" src="resources/assets/images/demo/portfolio/black-kitty-600x403.jpg" width="260" height="260" alt="">
							</figure>
							<div class="item-box-desc">
								<h4>Video</h4>
								<small class="styleColor">29 June, 2014</small>
							</div>
						</div>
					</li>
	
					<li class="isotope-item col-sm-6 col-md-4 design"><!-- item 3 -->
						<div class="item-box">
							<figure>
								<a class="item-hover" href="portfolio-single-full-slider.html">
									<span class="overlay color2"></span>
									<span class="inner">
										<span class="block fa fa-plus fsize20"></span>
										<strong>PROJECT</strong> DETAIL
									</span>
								</a>
								<img class="img-responsive" src="resources/assets/images/demo/portfolio/merchant2-600x403.jpg" width="260" height="260" alt="">
							</figure>
							<div class="item-box-desc">
								<h4>Detailed Project</h4>
								<small class="styleColor">29 June, 2014</small>
							</div>
						</div>
					</li>
	
				</ul>
	
			</div>
	
		</div>
	</section>
	<!-- /PORTFOLIO -->	

	</div>
	<!-- /WRAPPER -->



	<!-- FOOTER -->
	<footer>

		<!-- copyright , scrollTo Top -->
		<div class="footer-bar">
			<div class="container">
				<span class="copyright">Copyright &copy; Your Company, LLC . All Rights Reserved.</span>
				<a class="toTop" href="#topNav">BACK TO TOP <i class="fa fa-arrow-circle-up"></i></a>
			</div>
		</div>
		<!-- copyright , scrollTo Top -->


		<!-- footer content -->
		<div class="footer-content">
			<div class="container">

				<div class="row">


					<!-- FOOTER CONTACT INFO -->
					<div class="column col-md-4">
						<h3>CONTACT</h3>

						<p class="contact-desc">
							Atropos is a very powerful HTML5 template, you will be able to create an awesome website in a very simple way.										
						</p>
						<address class="font-opensans">
							<ul>
								<li class="footer-sprite address">
									PO Box 21132<br />
									Here Weare St, Melbourne<br />
									Vivas 2355 Australia<br />
								</li>
								<li class="footer-sprite phone">
									Phone: 1-800-565-2390
								</li>
								<li class="footer-sprite email">
									<a href="mailto:support@yourname.com">support@yourname.com</a>
								</li>
							</ul>
						</address>

					</div>
					<!-- /FOOTER CONTACT INFO -->


					<!-- FOOTER LOGO -->
					<div class="column logo col-md-4 text-center">
						<div class="logo-content">
							<img class="animate_fade_in" src="resources/assets/images/logo_footer.png" width="200" alt="" />
							<h4>ATROPOS TEMPLATE</h4>
						</div>											
					</div>
					<!-- /FOOTER LOGO -->


					<!-- FOOTER LATEST POSTS -->
					<div class="column col-md-4 text-right">
						<h3>RECENT POSTS</h3>

						<div class="post-item">
							<small>JANUARY 2, 2014 BY ADMIN</small>
							<h3><a href="blog-post.html">Lorem ipsum dolor sit amet, consectetur adipiscing elit</a></h3>
						</div>
						<div class="post-item">
							<small>JANUARY 2, 2014 BY ADMIN</small>
							<h3><a href="blog-post.html">Lorem ipsum dolor sit amet, consectetur adipiscing elit</a></h3>
						</div>
						<div class="post-item">
							<small>JANUARY 2, 2014 BY ADMIN</small>
							<h3><a href="blog-post.html">Lorem ipsum dolor sit amet, consectetur adipiscing elit</a></h3>
						</div>

						<a href="blog-masonry-sidebar.html" class="view-more pull-right">View Blog <i class="fa fa-arrow-right"></i></a>

					</div>
					<!-- /FOOTER LATEST POSTS -->

				</div>

			</div>
		</div>
		<!-- footer content -->

	</footer>
	<!-- /FOOTER -->

</body>
</html>