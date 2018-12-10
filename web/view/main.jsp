<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">

<!--A Design by W3layouts
Author: W3layout
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->

<title>AllNightGames</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="/AllNightGames/view/resources/css/style.css"
	rel="stylesheet" type="text/css" media="all" />
<link href="/AllNightGames/view/resources/css/form.css" rel="stylesheet"
	type="text/css" media="all" />
<link href='http://fonts.googleapis.com/css?family=Exo+2'
	rel='stylesheet' type='text/css'>
<script type="text/javascript"
	src="/AllNightGames/view/resources/js/jquery1.min.js"></script>
<!-- start menu -->
<link href="/AllNightGames/view/resources/css/megamenu.css"
	rel="stylesheet" type="text/css" media="all" />
<script type="text/javascript"
	src="/AllNightGames/view/resources/js/megamenu.js"></script>
<script src="https://maps.googleapis.com/maps/api/js?sensor=false"></script>
<script>
	function initialize() {
		var myLatlng = new google.maps.LatLng(37.501311, 127.039662);
		var markLocation = new google.maps.LatLng(37.501311, 127.039662);
		var mapOptions = {
			zoom : 17,
			center : myLatlng,
			mapTypeId : google.maps.MapTypeId.ROADMAP
		}
		var map = new google.maps.Map(document.getElementById('map_canvas'),
				mapOptions);
	}
</script>
<script>
	$(document).ready(function() {
		$(".megamenu").megamenu();
		$('input[type="submit"]').click(function(){
			var s = $('input[name="s"]').val();
		
			
			$('#search_form').attr('method','post');
			$('#search_form').attr('action','search.ang');
			$('#search_form').submit();		
		});

	});
</script>
<!--start slider -->
<link rel="stylesheet"
	href="/AllNightGames/view/resources/css/fwslider.css" media="all">
<script src="/AllNightGames/view/resources/js/jquery-ui.min.js"></script>
<script src="/AllNightGames/view/resources/js/css3-mediaqueries.js"></script>
<script src="/AllNightGames/view/resources/js/fwslider.js"></script>
<!--end slider -->
<script src="/AllNightGames/view/resources/js/jquery.easydropdown.js"></script>
</head>
<body onload="initialize()">
	<div class="header-top">
		<div class="wrap">
			<div class="cssmenu">
				<c:choose>
					<c:when test="${login_cust == null }">
						<ul>
							<li><a href="login.ang">로그인</a></li>
							<li><a href="register.ang">회원가입</a></li>
						</ul>
					</c:when>
					<c:otherwise>
						<ul>
							<li>${login_cust.cust_id }님   환영합니다!</li>
							<li class="active"><a href="account.ang">내정보</a></li>
							<li><a href="mypurchase.ang">구매내역</a></li>
							<li><a href="logout.ang">로그아웃</a></li>
						</ul>
					</c:otherwise>
				</c:choose>
			</div>
			<div class="clear"></div>
		</div>
	</div>
	<div class="header-bottom">
		<div class="wrap">
			<div class="header-bottom-left">
				<div class="logo">
					<a href="index.html"><img
						src="/AllNightGames/view/resources/images/logo.png" alt="" /></a>
				</div>
				<div class="menu">
					<ul class="megamenu skyblue">
						<li><a class="color4" href="#">장르</a>
							<div class="megapanel">
								<div class="row">
									<div class="col1">
										<div class="h_nav">
											<ul>
												<li><a href="categorylist.ang?gcode=2">Arcade</a></li>
												<li><a href="categorylist.ang?gcode=1">Action</a></li>
												<li><a href="categorylist.ang?gcode=3">Sports</a></li>
												<li><a href="categorylist.ang?gcode=4">Strategy</a></li>
												<li><a href="categorylist.ang?gcode=6">Adventure</a></li>
												<li><a href="categorylist.ang?gcode=7">RolePlaying</a></li>
												<li><a href="categorylist.ang?gcode=8">FPS</a></li>
												<li><a href="categorylist.ang?gcode=9">Racing</a></li>
												<li><a href="categorylist.ang?gcode=10">Adult</a></li>
											</ul>
										</div>
									</div>
								</div>
							</div></li>
						<li><a class="color5" href="mypurchase.ang">내게임</a></li>
					</ul>
				</div>
			</div>
			<div class="header-bottom-right">
				<form id="search_form">
					<div class="search">
						<input type="text" name="s" class="textbox" value="Search"
							onfocus="this.value = '';"
							onblur="if (this.value == '') {this.value = 'Search';}">
						<input type="submit" value="Subscribe" id="submit" name="submit">
						<div id="response"></div>
					</div>
				</form>

				<div class="tag-list">
					<ul class="icon1 sub-icon1 profile_img">
						<c:choose>
							<c:when test="${login_cust != null }">
								<li><a class="active-icon c2" href="checkout.ang"> </a></li>
							</c:when>
							<c:otherwise>
								<li><a class="active-icon c2" href="login.ang"> </a></li>
							</c:otherwise>
						</c:choose>

					</ul>
				</div>
			</div>
			<div class="clear"></div>
		</div>
	</div>
	<!-- start slider -->

	<!--/slider -->
	<div class="main">
		<div class="wrap">
			<c:choose>
				<c:when test="${center != null }">
					<jsp:include page="${center }.jsp" />
				</c:when>
				<c:otherwise>
					<jsp:include page="center.jsp" />
				</c:otherwise>
			</c:choose>
			<div class="clear"></div>
		</div>
	</div>



	<div class="footer">
		<div class="footer-middle">
			<div class="wrap">
				<!-- <div class="section group">
              <div class="f_10">
               <div class="col_1_of_4 span_1_of_4">
                  <h3>Facebook</h3>
                  <script>(function(d, s, id) {
                    var js, fjs = d.getElementsByTagName(s)[0];
                    if (d.getElementById(id)) return;
                    js = d.createElement(s); js.id = id;
                    js.src = "//connect.facebook.net/en_US/all.js#xfbml=1";
                    fjs.parentNode.insertBefore(js, fjs);
                  }(document, 'script', 'facebook-jssdk'));</script>
                  <div class="like_box">   
                     <div class="fb-like-box" data-href="http://www.facebook.com/w3layouts" data-colorscheme="light" data-show-faces="true" data-header="true" data-stream="false" data-show-border="true"></div>
                  </div>
               </div>
               <div class="col_1_of_4 span_1_of_4">
                  <h3>From Twitter</h3>
                  <div class="recent-tweet">
                     <div class="recent-tweet-icon">
                        <span> </span>
                     </div>
                     <div class="recent-tweet-info">
                        <p>Ds which don't look even slightly believable. If you are <a href="#">going to use nibh euismod</a> tincidunt ut laoreet adipisicing</p>
                     </div>
                     <div class="clear"> </div>
                  </div>
                  <div class="recent-tweet">
                     <div class="recent-tweet-icon">
                        <span> </span>
                     </div>
                     <div class="recent-tweet-info">
                        <p>Ds which don't look even slightly believable. If you are <a href="#">going to use nibh euismod</a> tincidunt ut laoreet adipisicing</p>
                     </div>
                     <div class="clear"> </div>
                  </div>
               </div>
            </div>
            <div class="f_10">
               <div class="col_1_of_4 span_1_of_4">
                   <h3>Information</h3>
                  <ul class="f-list1">
                      <li><a href="#">Duis autem vel eum iriure </a></li>
                        <li><a href="#">anteposuerit litterarum formas </a></li>
                        <li><a href="#">Tduis dolore te feugait nulla</a></li>
                         <li><a href="#">Duis autem vel eum iriure </a></li>
                        <li><a href="#">anteposuerit litterarum formas </a></li>
                        <li><a href="#">Tduis dolore te feugait nulla</a></li>
                     </ul>
               </div>
               <div class="col_1_of_4 span_1_of_4">
                  <h3>Contact us</h3>
                  <div class="company_address">
                               <p>500 Lorem Ipsum Dolor Sit,</p>
                              <p>22-56-2-9 Sit Amet, Lorem,</p>
                              <p>USA</p>
                        <p>Phone:(00) 222 666 444</p>
                        <p>Fax: (000) 000 00 00 0</p>
                       <p>Email: <span>mail[at]leoshop.com</span></p>
                        
                  </div>
                  <div class="social-media">
                       <ul>
                          <li> <span class="simptip-position-bottom simptip-movable" data-tooltip="Google"><a href="#" target="_blank"> </a></span></li>
                          <li><span class="simptip-position-bottom simptip-movable" da
                          
                          ta-tooltip="Linked in"><a href="#" target="_blank"> </a> </span></li>
                          <li><span class="simptip-position-bottom simptip-movable" data-tooltip="Rss"><a href="#" target="_blank"> </a></span></li>
                          <li><span class="simptip-position-bottom simptip-movable" data-tooltip="Facebook"><a href="#" target="_blank"> </a></span></li>
                      </ul>
                  </div>
               </div>
            <div class="clear"></div>
         </div>    
         <div class="clear"></div>
        </div>-->





				<div class="section group example">
					<div class="col_1_of_f_1 span_1_of_f_1">
						<div class="section group example">
							<div class="col_1_of_f_2 span_1_of_f_2">
								<h3>Contact us</h3>
								<div id="map_canvas" style="width: 500px; height: 300px;"></div>
							</div>

						</div>
					</div>
					<div class="col_1_of_f_1 span_1_of_f_1">
						<div class="section group example">

							<div class="col_1_of_f_2 span_1_of_f_2">
								<br> <br>
								<div class="company_address">
									<p>All Night Games Corporation</p>
									<br>
									<p>서울특별시 강남구 테헤란로 212</p>
									<p>212, Teheran-ro, Gangnam-gu,</p>
									<p>Seoul, Republic of Korea</p>
									<br>
									<p>Phone:(00)4885-4885</p>
									<p>Fax: (000)4885-4885</p>
								</div>
							</div>

							<div class="col_1_of_f_2 span_1_of_f_2">
								<h3>Information</h3>
								<ul class="company_address">
									<p>2018 All Night Games Corporation. All rights reserved.
										모든 상표는 한국 및 기타 국가에서 해당하는 소유자의 재산입니다
									<p>
										<br>
									<p>엔터테인먼트 플랫폼의 선두주자 게임 플레이, 소셜 활동, 콘텐츠 제작 및 다양한 기능 ANG를
										설치하고 게임을 즐기세요
									<p>
								</ul>
							</div>



							<div class="clear"></div>
						</div>
					</div>
					<div class="clear"></div>
				</div>
			</div>
		</div>
		<div class="footer-bottom">
				<center><p><small>Copyright ⓒ Oh Changyeong, Jeong Ingeol, Ji Minhu, Min Pilgyu. All Rights Reserved.</small></p></center>
			<div class="clear"></div>
		</div>
	</div>
	</div>
</body>
</html>
