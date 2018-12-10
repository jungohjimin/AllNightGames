<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>


<title>AllNightGames</title>
<script type="text/javascript"
	src="/AllNightGames/view/resources/js/jquery1.min.js"></script>
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="/AllNightGames/view/resources/css/style.css"
	rel="stylesheet" type="text/css" media="all" />
<link href="/AllNightGames/view/resources/css/form.css" rel="stylesheet"
	type="text/css" media="all" />
<link href='http://fonts.googleapis.com/css?family=Exo+2'
	rel='stylesheet' type='text/css'>

<!-- start menu -->
<link href="/AllNightGames/view/resources/css/megamenu.css"
	rel="stylesheet" type="text/css" media="all" />
<script type="text/javascript"
	src="/AllNightGames/view/resources/js/megamenu.js"></script>
<script>
	$(document).ready(function() {
		$(".megamenu").megamenu();
	});
</script>
<script>
	$(document).ready(function() {
		$('input[name="log"]').click(function() {
			var id = $('input[name="id"]').val();
			var pwd = $('input[name="pwd"]').val();
			if (id == null || id == '') {
				alert('ID Madatory Filled !');
				return;
			}
			if (pwd == null || pwd == '') {
				alert('PWD Madatory Filled !');
				return;
			}

		});
	});
</script>
<!-- dropdown -->
<script src="/AllNightGames/view/resources/js/jquery.easydropdown.js"></script>

<div class="wrap">
	<div class="col_1_of_login span_1_of_login">
		<h4 class="title">New Customers</h4>
		<p>AllNightGames에 오신 것을 환영합니다 엔터테인먼트 플랫폼의 선두주자 게임 플레이, 소셜 활동, 콘텐츠 제작 및 다양한
			기능 AllNightGames에 회원가입하고 게임을 즐기세요!</p>
		<div class="button1">
			<a href="register.ang"><input type="submit" name="Submit"
				value="Create an Account"></a>
		</div>
		<div class="clear"></div>
	</div>
	<div class="col_1_of_login span_1_of_login">
		<div class="login-title">
			<h4 class="title">Registered Customers</h4>
			<div id="loginbox" class="loginbox">
				<form action="loginimpl.ang" method="post" name="login"
					id="login-form">
					<fieldset class="input">
						<p id="login-form-username">
							<label for="modlgn_username">ID</label> <input type="text"
								name="id" class="inputbox" size="18" autocomplete="off">
						</p>
						<p id="login-form-password">
							<label for="modlgn_passwd">Password</label> <input
								type="password" name="pwd" class="inputbox" size="18"
								autocomplete="off">
						</p>
						<c:choose>
							<c:when test="${logok != null }">
								<c:if test="${logok == 'notid' }">
									<h5 font-color="red">존재하지 않거나 없는 아이디입니다.</h5>
								</c:if>
								<c:if test="${logok == 'pwd' }">
									<h5 font-color="red">비밀번호가 일치하지 않습니다.</h5>
								</c:if>
							</c:when>
							<c:otherwise>

							</c:otherwise>
						</c:choose>
						<div class="remember">


							<br> <input type="submit" name="log" value="Login"
								class="button">

							<div class="clear"></div>
						</div>
					</fieldset>
				</form>
			</div>
		</div>
	</div>
	<div class="clear"></div>
</div>