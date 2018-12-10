<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">




<div id="fwslider">
      <div class="slider_container">
         <div class="slide">
            <!-- Slide image -->
            <img src="/AllNightGames/view/resources/images/fm2019.jpg" width=100%  alt="" />
            <!-- /Slide image -->
            <!-- Texts container -->
            <div class="slide_content">
               <div class="slide_content_wrap">
                  <!-- Text title -->
                  <h4 class="title">Football Manger</h4>
                  <!-- /Text title -->

                  <!-- Text description -->
                  <p class="description">Make Your Team</p>
                  <!-- /Text description -->
               </div>
            </div>
            <!-- /Texts container -->
         </div>
         <!-- /Duplicate to create more slides -->
         <div class="slide">
            <img src="/AllNightGames/view/resources/images/TEKKEN7.jpg" width=100% height="518px" alt="" />
            
            <div class="slide_content">
               <div class="slide_content_wrap">
                  <h4 class="title">TEKKEN7</h4>
                  <p class="description">DO YOU WANNA FIGHT?</p>
               </div>
            </div>
         </div>
         <!--/slide -->
      </div>
      <div class="timers"></div>
      <div class="slidePrev">
         <span></span>
      </div>
      <div class="slideNext">
         <span></span>
      </div>
   </div>



<div class="wrap">
         <div class="section group">
            <div class="cont span_2_of_3">
               <h2 class="head">최신게임</h2>
               <div class="top-box">
                  <div class="col_1_of_3 span_1_of_3">
                     <a href="single.ang?gid=${plist[0].gid}">
                        <div class="inner_content clearfix">
                           <div class="product_image">
                              <img src="${plist[0].gimgname }" alt="" width= "200" height= "250"/>
                           </div>
                           <div class="price">
                              <div class="cart-left">
                                 <p class="title">${plist[0].gname }</p>
                                 <div class="price1">
                                    <span class="actual">${plist[0].gprice } 원</span>
                                 </div>
                              </div>
                              <div class="cart-right"></div>
                              <div class="clear"></div>
                           </div>
                        </div>
                     </a>
                  </div>
                  <div class="col_1_of_3 span_1_of_3">
                     <a href="single.ang?gid=${plist[1].gid}">
                        <div class="inner_content clearfix">
                           <div class="product_image">
                              <img src="${plist[1].gimgname }"
                              width= "200"  height= "250" alt="" />
                           </div>
                           <div class="price">
                              <div class="cart-left">
                                 <p class="title">${plist[1].gname }</p>
                                 <div class="price1">
                                    <span class="actual">${plist[1].gprice } 원</span>
                                 </div>
                              </div>
                              <div class="cart-right"></div>
                              <div class="clear"></div>
                           </div>
                        </div>
                     </a>
                  </div>
                  <div class="col_1_of_3 span_1_of_3">
                     <a href="single.ang?gid=${plist[2].gid}">
                        <div class="inner_content clearfix">
                           <div class="product_image">
                              <img src="${plist[2].gimgname }"
                              width= "200"  height= "250" alt="" />
                           </div>
                           <div class="price">
                              <div class="cart-left">
                                 <p class="title">${plist[2].gname }</p>
                                 <div class="price1">
                                    <span class="actual">${plist[2].gprice } 원</span> 
                                 </div>
                              </div>
                              <div class="cart-right"></div>
                              <div class="clear"></div>
                           </div>
                        </div>
                     </a>
                  </div>
                  <div class="clear"></div>
               </div>
               <div class="top-box">
                  <div class="col_1_of_3 span_1_of_3">
                     <a href="single.ang?gid=${plist[3].gid}">
                        <div class="inner_content clearfix">
                           <div class="product_image">
                              <img src="${plist[3].gimgname }"
                              width= "200" height= "250"  alt="" />
                           </div>
                           <div class="price">
                              <div class="cart-left">
                                 <p class="title">${plist[3].gname }</p>
                                 <div class="price1">
                                    <span class="actual">${plist[3].gprice } 원</span>
                                 </div>
                              </div>
                              <div class="cart-right"></div>
                              <div class="clear"></div>
                           </div>
                        </div>
                     </a>
                  </div>
                  <div class="col_1_of_3 span_1_of_3">
                     <a href="single.ang?gid=${plist[4].gid}">
                        <div class="inner_content clearfix">
                           <div class="product_image">
                              <img src="${plist[4].gimgname }"
                               width= "200" height= "250" alt="" />
                           </div>
                           <div class="price">
                              <div class="cart-left">
                                 <p class="title">${plist[4].gname }</p>
                                 <div class="price1">
                                    <span class="actual">${plist[4].gprice } 원</span>
                                 </div>
                              </div>
                              <div class="cart-right"></div>
                              <div class="clear"></div>
                           </div>
                        </div>
                     </a>
                  </div>
                  <div class="col_1_of_3 span_1_of_3">
                     <a href="single.ang?gid=${plist[5].gid}">
                        <div class="inner_content clearfix">
                           <div class="product_image">
                              <img src="${plist[5].gimgname }"
                                 width= "200" height= "250" alt="" />
                           </div>
                           <div class="price">
                              <div class="cart-left">
                                 <p class="title">${plist[5].gname }</p>
                                 <div class="price1">
                                    <span class="actual">${plist[5].gprice } 원</span>
                                 </div>
                              </div>
                              <div class="cart-right"></div>
                              <div class="clear"></div>
                           </div>
                        </div>
                     </a>
                  </div>
                  <div class="clear"></div>
               </div>
               <div class="top-box1">
                  <div class="col_1_of_3 span_1_of_3">
                     <a href="single.ang?gid=${plist[6].gid}">
                        <div class="inner_content clearfix">
                           <div class="product_image">
                              <img src="${plist[6].gimgname }"
                              width= "200"  height= "250" alt="" />
                           </div>
                           <div class="price">
                              <div class="cart-left">
                                 <p class="title">${plist[6].gname }</p>
                                 <div class="price1">
                                    <span class="actual">${plist[6].gprice } 원</span>
                                 </div>
                              </div>
                              <div class="cart-right"></div>
                              <div class="clear"></div>
                           </div>
                        </div>
                     </a>
                  </div>
                  <div class="col_1_of_3 span_1_of_3">
                     <a href="single.ang?gid=${plist[7].gid}">
                        <div class="inner_content clearfix">
                           <div class="product_image">
                              <img src="${plist[7].gimgname }"
                              width= "200" height= "250"  alt="" />
                           </div>
                           <div class="price">
                              <div class="cart-left">
                                 <p class="title">${plist[7].gname }</p>
                                 <div class="price1">
                                    <span class="actual">${plist[7].gprice } 원</span> 
                                 </div>
                              </div>
                              <div class="cart-right"></div>
                              <div class="clear"></div>
                           </div>
                        </div>
                     </a>
                  </div>
                  <div class="col_1_of_3 span_1_of_3">
                     <a href="single.ang?gid=${plist[8].gid}">
                        <div class="inner_content clearfix">
                           <div class="product_image">
                              <img src="${plist[8].gimgname }"
                             width= "200" height= "250"   alt="" />
                           </div>
                           <div class="price">
                              <div class="cart-left">
                                 <p class="title">${plist[8].gname }</p>
                                 <div class="price1">
                                    <span class="actual">${plist[8].gprice } 원</span>
                                 </div>
                              </div>
                              <div class="cart-right"></div>
                              <div class="clear"></div>
                           </div>
                        </div>
                     </a>
                  </div>
                  <div class="clear"></div>
               </div>

               <div class="clear"></div>
            </div>
         </div>
      
      <div class="rsingle span_1_of_single">
            <h5 class="m_1">추천 게임</h5>
               <a href = "/AllNightGames/single.ang?gid=117"> <img src="/AllNightGames/view/resources/images/call-of-duty-black-ops.jpg"/> </a>
               <br><br>
               <a href = "/AllNightGames/single.ang?gid=23"> <img src="/AllNightGames/view/resources/images/zelda.jpg"/> </a>
               <br><br>
               <a href = "/AllNightGames/single.ang?gid=23"> <img src="/AllNightGames/view/resources/images/godofwar.png"/> </a>
                   <script src="js/jquery.easydropdown.js"></script>
            </div>

         <div class="clear"></div>
      </div>