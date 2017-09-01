<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>@import "https://fonts.googleapis.com/css?family=Baloo+Tamma|Raleway|Lato";
body {
  font: 15px/1.25 "Raleway";
  font-weight: 400;
}

h1,
h2,
h3,
button {
  font-family: "Baloo Tamma";
}

.wrapper {
  height: 100vh;
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-align: center;
      -ms-flex-align: center;
          align-items: center;
  -webkit-box-pack: center;
      -ms-flex-pack: center;
          justify-content: center;
 
  position: relative;
}

.product-single {
  background: #fff;
  border-radius: 5px;
  box-shadow: 0 2px 15px rgba(0, 0, 0, 0.25);
  overflow: hidden;
  min-width: 761px;
  font-size: 16px;
  z-index: 1;
}
.product-single .product-gallery {
  margin-bottom: -4px;
  overflow: hidden;
  float: left;
  width: 380px;
  height: 380px;
  border-right: 1px solid #d0ddcb;
  position: relative;
}
.product-single .product-gallery:hover .slider-arrows {
  opacity: 1;
  height: 30px;
}
.product-single .product-gallery ul,
.product-single .product-gallery li {
  margin: 0;
  padding: 0;
  list-style: none;
}
.product-single .product-gallery .slider-arrows {
  position: absolute;
  top: 0;
  right: 0;
  left: 0;
  bottom: 0;
  margin: auto;
  height: 0;
  font-size: 30px;
  color: #fff;
  padding: 0 10px;
  opacity: 0;
  -webkit-transition: all .2s ease-in;
  transition: all .2s ease-in;
  z-index: 1;
}
.product-single .product-gallery .slider-arrows i {
  text-shadow: 0 0 7px rgba(0, 0, 0, 0.4);
  cursor: pointer;
  color: rgba(255, 255, 255, 0.8);
  -webkit-transition: all .2s ease-in-out;
  transition: all .2s ease-in-out;
}
.product-single .product-gallery .slider-arrows i:hover {
  color: #fff;
}
.product-single .product-gallery .slider-arrows i:first-child {
  float: left;
}
.product-single .product-gallery .slider-arrows i:last-child {
  float: right;
}
.product-single .product-gallery #slider-wrap {
  position: relative;
  background: #999;
  overflow: hidden;
  height: 380px;
  width: 380px;
}
.product-single .product-gallery #slider-wrap .slides {
  width: 100%;
  height: 100%;
  position: absolute;
  top: 0;
  left: 0;
  -webkit-transition: all .2s .1s ease-out;
  transition: all .2s .1s ease-out;
}
.product-single .product-gallery #slider-wrap .slides li {
  float: left;
  width: 380px;
  height: 380px;
  position: relative;
}
.product-single .product-gallery #slider-wrap .slides img {
  max-width: 100%;
}
.product-single .product-gallery .nav-dots {
  display: block;
  margin: auto;
  text-align: center;
  position: absolute;
  left: 0;
  right: 0;
  bottom: 12px;
}
.product-single .product-gallery .nav-dots li {
  height: 8px;
  width: 8px;
  border-radius: 50%;
  margin-right: 10px;
  position: relative;
  display: inline-block;
  background: transparent;
}
.product-single .product-gallery .nav-dots li:before {
  content: "";
  position: absolute;
  background: transparent;
  top: -50%;
  bottom: -50%;
  right: -50%;
  left: -50%;
 
  border-radius: 50%;
  border: 3px solid #fff;
  box-shadow: 0 0 7px -2px #000;
}
.product-single .product-gallery .nav-dots li.active {
  background: #d75229;
  -webkit-transition: all .1s .1s linear;
  transition: all .1s .1s linear;
}
.product-single .product-gallery .nav-dots li:last-child {
  margin-right: 0;
}
.product-single .product-details {
  padding: 20px;
  width: 380px;
  height: 380px;
  float: left;
  box-sizing: border-box;
  font-size: 14px;
  position: relative;
}
.product-single .product-details .product-title {
  margin-top: 0;
  line-height: 1;
  color: #d75229;
}
.product-single .product-details .product-cost {
  font-size: 20px;
  margin-bottom: 10px;
  color: #5dac48;
}
.product-single .product-details .product-rating .product-reviews {
  font-family: "Lato";
  margin-left: 15px;
  font-size: 12px;
}
.product-single .product-details .product-rating .product-reviews a {
  color: #999;
  text-transform: uppercase;
  text-decoration: none;
  -webkit-transition: color .05s ease;
  transition: color .05s ease;
}
.product-single .product-details .product-rating .product-reviews a:hover {
  text-decoration: underline;
  color: #d75229;
}
.product-single .product-details .product-rating ul {
  display: inline-block;
}
.product-single .product-details .product-rating ul,
.product-single .product-details .product-rating li {
  padding: 0;
  margin: 0;
  list-style: none;
}
.product-single .product-details .product-rating li {
  color: #fcd000;
}
.product-single .product-details .product-description {
  font-size: 15px;
  line-height: 1.1;
  overflow: hidden;
  max-height: 150px;
  margin: 10px 0;
}
.product-single .product-details .product-cta {
  text-align: center;
  margin: 13px 0;
  position: absolute;
  left: 0;
  right: 0;
  bottom: 40px;
}
.product-single .product-details .product-atc,
.product-single .product-details .product-atw {
  font-size: 16px;
  padding: 10px 22px;
  color: #fff;
  border: none;
  margin: auto;
  border-radius: 20px;
  -webkit-transition: all .1s ease;
  transition: all .1s ease;
  margin-right: 10px;
}
.product-single .product-details .product-atc:last-child,
.product-single .product-details .product-atw:last-child {
  margin: 0;
}
.product-single .product-details .product-atc:focus,
.product-single .product-details .product-atw:focus {
  outline: none;
}
.product-single .product-details .product-atc:hover,
.product-single .product-details .product-atw:hover {
  background: #d75229;
}
.product-single .product-details .product-atc {
  background: #5dac48;
}
.product-single .product-details .product-atw {
  color: #999;
}
.product-single .product-details .product-atw:hover {
  color: #fff;
}
.product-single .product-details .product-info {
  font-size: 11px;
  font-family: "Lato";
  position: absolute;
  bottom: 20px;
  margin-top: 10px;
  color: #999;
}
.product-single .product-details .product-info span {
  display: inline-block;
  margin-right: 10px;
}
var $sliderWrap = $('#slider-wrap'),
    $slider = $sliderWrap.find('.slides'),
    $firstSlide = $slider.find('li:first'),
    $lastSlide = $slider.find('li:last'),
    $sliderSlides = $sliderWrap.find('.slides > li'),
    $navDots = $sliderWrap.find('.nav-dots li'),
    $slideArrowLeft = $('#prev-slide'),
    $slideArrowRight = $('#next-slide'),
    $slideArrows = $slideArrowLeft.add($slideArrowRight),
    sliderWidth = $sliderWrap.width(),
    // dynamic variables
    sliderPos = 0,
    s_index = 0,
    currentSlide = $sliderSlides[s_index];

function changeSlide() {
    $slider.css('left', sliderPos);

    $navDots.removeClass('active');
    $($navDots[s_index]).addClass('active');
}


function setSliderWidth() {
    /* -----------------------------------------
     * set slider width
     * slider container * number of slides
     * ----------------------------------------- */
    $slider.css('width', sliderWidth * $sliderSlides.length);
}

function nextSlide() {
    /* -----------------------------------------
     * IF: slide index >= total slides
     * THEN:
     *      slide index = 0 
     *      slide pos = 0
     * ELSE:
     *      slide index + 1
     *      move slider position one slide
     * ---------------------------------------- */
    s_index >= ($sliderSlides.length - 1) ? (
        // s_index = 0,
        // sliderPos = 0,
        false
    ) : (
        s_index++,
        sliderPos -= sliderWidth
    );

    // change slide
    changeSlide();
}

function prevSlide() {
    /* -----------------------------------------
     * IF: slide index <= 0
     * THEN:
     *      slide index = $slides.length
     *      move slider position to last slide
     * ELSE:
     *      slide index - 1
     *      move slider position back one slide
     * ---------------------------------------- */
    s_index <= 0 ? (
        // s_index = ($sliderSlides.length - 1),
        // sliderPos = -$sliderWrap.width()
        false
    ) : (
        s_index--,
        sliderPos += sliderWidth
    );

    // change slide
    changeSlide();
}

// set slider width
setSliderWidth();

$slideArrows.on('click', function() {
    // get target id
    var $target_id = $(this).attr('id');

    /* -----------------------------------------
     * Based on target id
     * Execute nextSlide() or prevSlide()
     * --------------------------------------- */
    switch ($target_id) {
        case 'prev-slide':
            prevSlide();
            break;
        case 'next-slide':
            nextSlide();
            break;
    }
});

$navDots.on('click', function(e) {
    var oldIndex = s_index,
        curIndex = $navDots.index(this);

    /* -----------------------------------------
     * IF: curIndex = oldIndex
     * THEN: return false
     * ELSE IF: oldIndex < curIndex
     * THEN: nextSlide()
     * ELSE: prevSlide()
     * ----------------------------------------- */
    curIndex === oldIndex ? false : (oldIndex < curIndex) ? nextSlide() : prevSlide();
});
</style>

</head>
<body>

<div class="wrapper">
  <div class="product-single">
    <div class="product-gallery">
      <div class="slider-arrows"><i class="fa fa-fw fa-arrow-circle-o-left" id="prev-slide"></i><i class="fa fa-fw fa-arrow-circle-o-right" id="next-slide"></i></div>
      <div id="slider-wrap">
        <ul class="slides">
         <c:url value="/resources/product/${product.productId}.jpg"  var="url" ></c:url>
         <img src="${url}"width="400" height="400" align="centre" >
    
        </ul>
        
      </div>
    </div>
    <div class="product-details">
     
      <h5>${product.productName}</h5>
			<h6>Price:${product.price}</h6>
			
      
      <div class="product-description">
       <h6>ProductDescription:${product.productDescription}</h6>
      </div>
      <div class="product-cta">
      <c:if test="${pageContext.request.userPrincipal.name == null }">
       <c:url value="/login" var="login"></c:url>
       <a href="${login}">
       
  <button class="product-atc">Add to Cart</button></a>
        <!-- <button class="product-atw">Add to Wishlist</button> -->
  </c:if>
    <c:if test="${pageContext.request.userPrincipal.name != null }">
    <c:url value="/Cart/addtocart" var="h"></c:url>
  <p><a href="${h}?productId=${product.productId}"> <button class="product-atc">Add to Cart</button></a>
      <!--   <button class="product-atw">Add to Wishlist</button></p> -->
          </c:if>
          


      </div>
     
    </div>
  </div>
</div>
</body>
</html>