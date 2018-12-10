<%@ page language="java" contentType="text/html; charset=EUC-KR"
   pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!--A Design by W3layouts
Author: W3layout
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE HTML>
<html>
<head>
<title>Free Leoshop Website Template | Single:: w3layouts</title>
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="/AllNightGames/view/resources/css/style.css" rel="stylesheet" type="text/css" media="all" />
<link href="/AllNightGames/view/resources/css/form.css" rel="stylesheet" type="text/css" media="all" />
<link href='http://fonts.googleapis.com/css?family=Exo+2' rel='stylesheet' type='text/css'>
<script src="/AllNightGames/view/resources/js/jquery1.min.js"></script>
<!-- start menu -->
<link href="/AllNightGames/view/resources/css/megamenu.css" rel="stylesheet" type="text/css" media="all" />
<script type="text/javascript" src="/AllNightGames/view/resources/js/megamenu.js"></script>
<script>$(document).ready(function(){$(".megamenu").megamenu();});</script>
<script type="text/javascript" src="/AllNightGames/view/resources/js/jquery.jscrollpane.min.js"></script>
      <script type="text/javascript" id="sourcecode">
         $(function()
         {
            $('.scroll-pane').jScrollPane();
         });
      </script>
<!-- start details -->
<script src="/AllNightGames/view/resources/js/slides.min.jquery.js"></script>
   <script>
      $(function(){
         $('#products').slides({
            preload: true,
            preloadImage: 'img/loading.gif',
            effect: 'slide, fade',
            crossfade: true,
            slideSpeed: 350,
            fadeSpeed: 500,
            generateNextPrev: true,
            generatePagination: false
         });
      });
   </script>
<link rel="stylesheet" href="/AllNightGames/view/resources/css/etalage.css">
<script src="/AllNightGames/view/resources/js/jquery.etalage.min.js"></script>
<script>
         jQuery(document).ready(function($){

            $('#etalage').etalage({
               thumb_image_width: 360,
               thumb_image_height: 360,
               source_image_width: 900,
               source_image_height: 900,
               show_hint: true,
               click_callback: function(image_anchor, instance_id){
                  alert('Callback example:\nYou clicked on an image with the anchor: "'+image_anchor+'"\n(in Etalage instance: "'+instance_id+'")');
               }
            });

         });
      </script>   
</head>
   
<div class="mens">    
  <div class="main">
     <div class="wrap">
      <div class="cont span_2_of_3">
           <div class="grid images_3_of_2">
           <c:choose>
            <c:when test="${login_cust == null }">
               <form action="login.ang" method="post" name="login">
                  <ul id="etalage">
                     <li>
                        <a href="optionallink.html">
                           <img class="etalage_thumb_image" src="${gproduct.gimgname }" class="img-responsive" />
                           <img class="etalage_source_image" src="${gproduct.gimgname }" class="img-responsive" title="" />
                        </a>
                     </li>
                     <li>
                        <img class="etalage_thumb_image" src="${gproduct.gimgname }" class="img-responsive" />
                        <img class="etalage_source_image" src="${gproduct.gimgname }" class="img-responsive" title="" />
                     </li>
                     <li>
                        <img class="etalage_thumb_image" src="${gproduct.gimgname }" class="img-responsive"  />
                        <img class="etalage_source_image" src="${gproduct.gimgname }" class="img-responsive"  />
                     </li>
                      <li>
                        <img class="etalage_thumb_image" src="${gproduct.gimgname }" class="img-responsive"  />
                        <img class="etalage_source_image" src="${gproduct.gimgname }" class="img-responsive"  />
                     </li>
                  </ul>
                   <div class="clearfix"></div>
               </div>
               <div class="desc1 span_3_of_2">
                  <h3 class="m_3">${gproduct.gname }</h3>
                   <p class="m_5">${gproduct.gprice } 원 </p>
                   <p class="m_5">${gproduct.gcodenm }  </p>
                   <br>
                   <div class="toogle">
                 <h3 class="m_3">게임 설명</h3>
                   <p class="m_text">${gproduct.gdetail }</p>
                  </div>
                   <div class="btn_form">
                  <span class="m_link"><a href="login.ang">구매를 하기 위해서 로그인하시오</a> </span>
            </form>
            </c:when>
            
            <c:otherwise>
               <form action="buyimpl.ang" method="get" value="${gproduct }" name="login">
                  <ul id="etalage">
                     <li>
                        <a href="optionallink.html"> 
                        <img class="etalage_thumb_image" src="${gproduct.gimgname }" class="img-responsive" /> 
                        <img class="etalage_source_image" src="${gproduct.gimgname }" class="img-responsive" title="" />
                        </a>
                     </li>
                     <li>
                        <img class="etalage_thumb_image" src="${gproduct.gimgname }" class="img-responsive" /> 
                        <img class="etalage_source_image" src="${gproduct.gimgname }" class="img-responsive" title="" />
                     </li>
                     <li>
                        <img class="etalage_thumb_image" src="${gproduct.gimgname }" class="img-responsive" /> 
                        <img class="etalage_source_image" src="${gproduct.gimgname }" class="img-responsive" />
                     </li>
                     <li>
                        <img class="etalage_thumb_image" src="${gproduct.gimgname }" class="img-responsive" /> 
                        <img class="etalage_source_image" src="${gproduct.gimgname }" class="img-responsive" />
                     </li>
                  </ul>
                  <div class="clearfix"></div>
         </div> 
         
         <div class="desc1 span_3_of_2">
            <p class="m_5">${gproduct.gname }</p>
            <h3 class="m_1">${gproduct.gprice } 원</h3>
            <h3 class="m_1">${gproduct.gcodenm }</h3>
            <br>
            <div class="toogle">
               <h3 class="m_3">게임 설명</h3>
                <p class="m_text">${gproduct.gdetail }</p>
              </div>
            <div class="btn_form">
               <input type="hidden" value="${gproduct.gid}" name="g_gid"> 
               <a href="order.ang?gid=${gproduct.gid }"><input type="button" value="buy"></a>
               
                &nbsp;  &nbsp;  &nbsp;  &nbsp; &nbsp; &nbsp; &nbsp;
               <input type="submit" value="cart">
               </form>
               </c:otherwise>
               </c:choose>
               
               </div>
            </div>

         </div>
         <div class="clear"></div>
               
       <div class="clients">
   <script type="text/javascript">
      $(window).load(function() {
         $("#flexiselDemo1").flexisel();
         $("#flexiselDemo2").flexisel({
            enableResponsiveBreakpoints: true,
             responsiveBreakpoints: { 
                portrait: { 
                   changePoint:480,
                   visibleItems: 1
                }, 
                landscape: { 
                   changePoint:640,
                   visibleItems: 2
                },
                tablet: { 
                   changePoint:768,
                   visibleItems: 3
                }
             }
          });
      
         $("#flexiselDemo3").flexisel({
            visibleItems: 5,
            animationSpeed: 1000,
            autoPlay: false,
            autoPlaySpeed: 3000,          
            pauseOnHover: true,
            enableResponsiveBreakpoints: true,
             responsiveBreakpoints: { 
                portrait: { 
                   changePoint:480,
                   visibleItems: 1
                }, 
                landscape: { 
                   changePoint:640,
                   visibleItems: 2
                },
                tablet: { 
                   changePoint:768,
                   visibleItems: 3
                }
             }
          });
          
      });
   </script>
   <script type="text/javascript" src="/AllNightGames/view/resources/js/jquery.flexisel.js"></script>
     </div>
     <div class="toogle">
        <h3 class="m_3">More Information</h3>
        <p class="m_text">Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum.</p>
     </div>
      </div>
      
      
         <div class="rsingle span_1_of_single">
            <h5 class="m_1">추천 게임</h5>
               <br>
               <a href = "/AllNightGames/single.ang?gid=23"> <img src="/AllNightGames/view/resources/images/rsingle_images.jpg"/> </a>
               <br><br><br>
               <a href = "/AllNightGames/single.ang?gid=23"> <img src="/AllNightGames/view/resources/images/GrandTheftAuto5.png"/> </a>
                   <script src="js/jquery.easydropdown.js"></script>
            </div>
           
            <div class="clear"></div>
         </div>
            <div class="clear"></div>
         </div>
          <div class="clear"></div>
         </div>
      </div>