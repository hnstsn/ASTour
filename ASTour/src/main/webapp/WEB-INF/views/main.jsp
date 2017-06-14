<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="path" value="${pageContext.request.contextPath}" />
<head>
	<meta charset="utf-8" />
	<!-- AST : bootstrap을 위한 것들을 모아놓은  jsp page -->
	<%@ include file="include/bootstap_collect.jsp" %>

</head>

<!-- WRAPPER -->
<div id="wrapper">
        
  <!-- REVOLUTION SLIDER -->
  <div class="fullwidthbanner-container roundedcorners">
     <div class="fullwidthbanner">
		<ul>   
  
           <!-- SLIDE  -->
           <li data-transition="fade" data-slotamount="7" data-masterspeed="1500">
  
              <!-- COVER IMAGE -->
              <!-- data-bgfit="cover" data-bgposition="left top" data-bgrepeat="no-repeat" -->
              <img src="${path}/resources/image/main/mainimg1.jpg" alt="">
  
  			<div class="tp-caption large_text sft"
                 data-x="right"
                 data-y="360"
                 data-customin="x:-150;y:-280;z:0;rotationX:-140;rotationY:-280;rotationZ:-220;scaleX:1.5;scaleY:0;skewX:57;skewY:60;opacity:0;transformPerspective:600;transformOrigin:120% 190%;"
                 data-customout="x:-450;y:-430;z:-30;rotationX:90;rotationY:-290;rotationZ:-20;scaleX:1;scaleY:2.8;skewX:59;skewY:4;opacity:0;transformPerspective:600;transformOrigin:70% 0%;"
                 data-speed="1500"
                 data-endspeed="500"
                 data-start="1400"
                 data-endeasing="Bounce.easeOut"
                 data-easing="Back.easeInOut">
                 <a class="btn btn-primary btn-lg" href="${path}/attraction/initDetails.do?name=장호항">장호항 바로가기</a>
              </div>
  
           </li>
  
           <!-- SLIDE  -->
           <li data-transition="3dcurtain-vertical" data-slotamount="14"  data-masterspeed="300" data-delay="10000">
  
              <!-- COVER IMAGE -->
              <img src="${path}/resources/image/main/mainimg2.jpg" alt="" data-bgfit="cover" data-bgposition="left top" data-bgrepeat="no-repeat" />
              
              <div class="tp-caption very_large_text lfl stl"
                 data-x="right"   
                 data-y="293"
                 data-speed="1300"
                 data-start="500"
                 data-easing="easeOutExpo" 
                 data-endspeed="300" 
                 data-endeasing="easeInSine">전주한옥마을 
              </div>
              
              <div class="tp-caption large_text sft"
                 data-x="right"
                 data-y="360"
                 data-customin="x:-150;y:-280;z:0;rotationX:-140;rotationY:-280;rotationZ:-220;scaleX:1.5;scaleY:0;skewX:57;skewY:60;opacity:0;transformPerspective:600;transformOrigin:120% 190%;"
                 data-customout="x:-450;y:-430;z:-30;rotationX:90;rotationY:-290;rotationZ:-20;scaleX:1;scaleY:2.8;skewX:59;skewY:4;opacity:0;transformPerspective:600;transformOrigin:70% 0%;"
                 data-speed="1500"
                 data-endspeed="500"
                 data-start="1400"
                 data-endeasing="Bounce.easeOut"
                 data-easing="Back.easeInOut">
                 <a class="btn btn-primary btn-lg" href="${path}/attraction/initDetails.do?name=전주한옥마을">전주한옥마을 바로가기</a>
              </div>
           </li>
  
           <!-- SLIDE -->
           <li data-transition="incube-horizontal" data-slotamount="5" data-masterspeed="700" >
  
              <!-- COVER IMAGE -->
               <!-- data-bgfit="cover" data-bgposition="left top" data-bgrepeat="no-repeat" -->
              <img src="${path}/resources/image/main/mainimg3.jpg" alt="">
  
              <div class="tp-caption large_text sft"
                 data-x="right"
                 data-y="130"
                 data-speed="300"
                 data-start="1000"
                 data-endspeed="500"
                 data-easing="easeOutBack"><h1>대관령</h1>
              </div>
  
              <div class="tp-caption large_text sft"
                 data-x="right"
                 data-y="260"
                 data-speed="300"
                 data-start="1700"
                 data-endspeed="500"
                 data-easing="easeOutBack"><h2>양떼목장</h2>
              </div>
  
              <div class="tp-caption large_text sft"
                 data-x="right"
                 data-y="360"
                 data-customin="x:-150;y:-280;z:0;rotationX:-140;rotationY:-280;rotationZ:-220;scaleX:1.5;scaleY:0;skewX:57;skewY:60;opacity:0;transformPerspective:600;transformOrigin:120% 190%;"
                 data-customout="x:-450;y:-430;z:-30;rotationX:90;rotationY:-290;rotationZ:-20;scaleX:1;scaleY:2.8;skewX:59;skewY:4;opacity:0;transformPerspective:600;transformOrigin:70% 0%;"
                 data-speed="1500"
                 data-endspeed="500"
                 data-start="2000"
                 data-endeasing="Bounce.easeOut"
                 data-easing="Back.easeInOut">
                 <a class="btn btn-primary btn-lg" href="${path}/attraction/initDetails.do?name=대관령 양떼목장">대관령 양떼목장 바로가기</a>
              </div>
  
           </li>
           <!-- SLIDE  -->
           <li data-transition="boxslide" data-slotamount="5" data-link="https://wrapbootstrap.com/theme/atropos-responsive-website-template-WB05SR527" data-target="_blank" data-slideindex="back">
  
              <!-- COVER IMAGE -->
              <img src="${path}/resources/image/main/go.jpg" />
  
              <div class="tp-caption very_large_text lfl stl"
                 data-x="right" data-hoffset="-30"
                 data-y="293"
                 data-speed="300"
                 data-start="500"
                 data-easing="easeOutExpo" 
                 data-endspeed="300" 
                 data-endeasing="easeInSine">ASTOUR
              </div>
  
              <div class="tp-caption large_bold_grey medium_thin_grey lfl stl"
                 data-x="right" data-hoffset="-30"
                 data-y="260"
                 data-speed="300"
                 data-start="800"
                 data-easing="easeOutExpo" 
                 data-endspeed="300" 
                 data-endeasing="easeInSine">
                 <a href="#"></a>
              </div>
  
              <div class="tp-caption randomrotate"
                 data-x="48"
                 data-y="131"
                 data-speed="600"
                 data-start="1100"
                 data-easing="easeOutExpo">
                 <img src="${path}/resources/image/culture/Cheonggyecheon.jpg" width="140" height="140" alt="Image 2">
              </div>
  
              <div class="tp-caption randomrotate"
                 data-x="90"
                 data-y="206"
                 data-speed="600"
                 data-start="1200"
                 data-easing="easeOutExpo">
                 <img src="${path}/resources/image/culture/jungdong.jpg" width="140" height="140" alt="Image 3">
              </div>
  
              <div class="tp-caption randomrotate"
                 data-x="205"
                 data-y="140"
                 data-speed="600"
                 data-start="1300"
                 data-easing="easeOutExpo">
                 <img src="${path}/resources/image/culture/jangtaesan.jpg" width="140" height="140" alt="Image 4">
              </div>
  
              <div class="tp-caption randomrotate"
                 data-x="188"
                 data-y="246"
                 data-speed="300"
                 data-start="1400"
                 data-easing="easeOutExpo">
                 <img src="${path}/resources/image/culture/junju.jpg" width="140" height="140" alt="Image 5">
              </div>
  
              <div class="tp-caption randomrotate"
                 data-x="55"
                 data-y="316"
                 data-speed="600"
                 data-start="1500"
                 data-easing="easeOutExpo">
                 <img src="${path}/resources/image/culture/janghohang.jpg" width="140" height="140" alt="Image 6">
              </div>
  
              <div class="tp-caption randomrotate"
                 data-x="173"
                 data-y="329"
                 data-speed="300"
                 data-start="1600"
                 data-easing="easeOutExpo">
                 <img src="${path}/resources/image/culture/LotteTower.jpg" width="140" height="140" alt="Image 7">
              </div>
  
              <div class="tp-caption randomrotate"
                 data-x="255"
                 data-y="294"
                 data-speed="300"
                 data-start="1700"
                 data-easing="easeOutExpo">
                 <img src="${path}/resources/image/culture/sukmodo.jpg" width="140" height="140" alt="Image 8">
              </div>
  
              <div class="tp-caption randomrotate"
                 data-x="275"
                 data-y="166"
                 data-speed="300"
                 data-start="1800"
                 data-easing="easeOutExpo">
                 <img src="${path}/resources/image/culture/park.jpg" width="140" height="140" alt="Image 9">
              </div>
  
              <div class="tp-caption randomrotate"
                 data-x="84"
                 data-y="113"
                 data-speed="300"
                 data-start="1900"
                 data-easing="easeOutExpo">
                 <img src="${path}/resources/image/culture/Namsan.jpg" width="140" height="140" alt="Image 10">
              </div>
  
              <div class="tp-caption randomrotate"
                 data-x="26"
                 data-y="225"
                 data-speed="300"
                 data-start="2000"
                 data-easing="easeOutExpo">
                 <img src="${path}/resources/image/culture/jejupark.jpg" width="140" height="140" alt="Image 11">
              </div>
  
              <div class="tp-caption randomrotate"
                 data-x="110"
                 data-y="187"
                 data-speed="300"
                 data-start="2100"
                 data-easing="easeOutExpo">
                 <img src="${path}/resources/image/culture/Cheonggyecheon.jpg" width="140" height="140" alt="Image 12">
              </div>
  
              <div class="tp-caption randomrotate"
                 data-x="183"
                 data-y="221"
                 data-speed="300"
                 data-start="2200"
                 data-easing="easeOutExpo">
                 <img src="${path}/resources/image/culture/sheepranch.jpg" width="140" height="140" alt="Image 13">
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
<<<<<<< HEAD
        <strong>Welcome</strong> to <strong>AS TOUR</strong>
=======
        Welcome to <strong>ASTour</strong>
>>>>>>> branch 'master' of https://github.com/hnstsn/ASTour.git
     </h1>
  
     <div class="divider"><!-- divider -->
        <i class="fa fa-star"></i>
     </div>
  
     <p class="lead"></p>
  
     <hr /><h3>조회순</h3>
  
     <!-- FEATURED BOXES 4 -->
     
     <div class="row featured-box-minimal margin-bottom30">
        <div class="col-md-4">
           <h4><i style="color: #D9C91D;" class="fa fa-trophy"></i>금메달</h4>
        	<h5>${rankList[0].stag }</h5>
            <a href="${path}/snsdetails/contentview.do?spk=${rankList[0].spk }"><h3><p>${rankList[0].stitle }</p></h3></a>  
        </div>
        <div class="col-md-4">
           <h4><i style="color: lightgrey;" class="fa fa-trophy"></i>은메달</h4>
        	<h5>${rankList[1].stag }</h5>
            <a href="${path}/snsdetails/contentview.do?spk=${rankList[1].spk }"><h3><p>${rankList[1].stitle }</p></h3></a>
        </div>
        <div class="col-md-4">
           <h4><i style="color: #704405;" class="fa fa-trophy"></i>동메달</h4>
        	<h5>${rankList[2].stag }</h5>
           <a href="${path}/snsdetails/contentview.do?spk=${rankList[2].spk }"><h3><p>${rankList[2].stitle }</p></h3></a> 
        </div>
     </div>
     <!-- /FEATURED BOXES 4 -->
 
  
     <hr /><h3>태그순</h2>
     <!-- FEATURED BOXES 4 -->
     <div class="row featured-box-minimal margin-bottom30">
        <div class="col-md-4">
           <h4><i style="color: #D9C91D;" class="fa fa-trophy"></i>금메달</h4>
           <a href="${path}/attraction/initDetails.do?name=${tagrank[0].atitle }"><h3><p>${tagrank[0].atitle }</p></h3></a>
        </div>
        <div class="col-md-4">
           <h4><i style="color: lightgrey;" class="fa fa-trophy"></i>은메달</h4>
           <a href="${path}/attraction/initDetails.do?name=${tagrank[1].atitle }"><h3><p>${tagrank[1].atitle }</p></h3></a>
        </div>
        <div class="col-md-4">
           <h4><i style="color: #704405;" class="fa fa-trophy"></i>동메달</h4>
           <a href="${path}/attraction/initDetails.do?name=${tagrank[2].atitle }"><h3><p>${tagrank[2].atitle }</p></h3></a>
        </div>
     </div>
     <!-- /FEATURED BOXES 4 -->
     
     <div class="divider"><!-- divider -->
        <i class="fa fa-star"></i>
     </div>
  
  </section>
  <!-- /WELCOME -->
  
  <!-- PORTFOLIO -->
  <section id="portfolio" class="special-row padding100 margin-top100 margin-footer">
     <div class="container">
  
        <div class="row">
  
           <ul class="sort-destination isotope" data-sort-id="isotope-list">
				<c:forEach var="num" begin="0" end="2">
					<li class="isotope-item col-sm-6 col-md-4 design">
						<!-- item 3 -->
						<div class="item-box">
							<figure>
								<a class="item-hover" href="${path}/attraction/initDetails.do?name=${list.get(num).atitle}">
									<span class="overlay color2"></span> <span class="inner">
										<span class="block fa fa-plus fsize20"></span> <strong>상세보기</strong>
								</span>
								</a>
								<img class="img-responsive" src="${path}/sns/${list.get(num).aimage}" alt="">
							</figure>
							<div class="item-box-desc">
								<h4>${list.get(num).atitle}</h4>
								<small class="styleColor">${list.get(num).asort}</small>
							</div>
						</div>
					</li>
				</c:forEach>
<!--  -->
			</ul>
  
        </div>
  
     </div>
  </section>
</div>
