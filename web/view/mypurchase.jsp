<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link
	href="//netdna.bootstrapcdn.com/bootstrap/3.0.3/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//netdna.bootstrapcdn.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">

<title>Free Leoshop Website Template | Checkout :: w3layouts</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="/AllNightGames/view/resources/css/style.css"
	rel="stylesheet" type="text/css" media="all" />
<link href='http://fonts.googleapis.com/css?family=Exo+2'
	rel='stylesheet' type='text/css'>
<script type="text/javascript"
	src="/AllNightGames/view/resources/js/jquery1.min.js"></script>
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

<script src="/AllNightGames/view/resources/js/jquery.easydropdown.js"></script>
<style>
table, td, tr {
	width: 400px;
	border: 1px solid black;
	text-align: center;
}
</style>
<c:choose>
	<c:when test="${login_cust != null }">
		<li><div class="wrap">
			<div class="container">
				<div class="row">
					<div class="col-xs-8">
						<div class="panel panel-info">
							<div class="panel-heading">
								<div class="panel-title">
									<div class="row">
										<div class="col-xs-6">
											<h5>
												<span class="glyphicon glyphicon-shopping-cart"></span>
												Shopping Cart
											</h5>
										</div>
										<div class="col-xs-6">
											<a href="index.html">
												<button type="button"
													class="btn btn-primary btn-sm btn-block">
													<span class="glyphicon glyphicon-share-alt"></span>
													Continue shopping
												</button>
											</a>
										</div>
									</div>
								</div>
							</div>
							<div class="panel-body">
								<c:forEach var="i" begin="1" end="${cartlist.size() }" step="1">
									<form id="delete-form"
										action="deleteimpl.ang?gid=${cartlist[i-1].oid }"
										method="post">

										<div class="row">

											<div class="col-xs-2">
												<small>총 주문 가격 : ${cartlist[i-1].totalprice }</small>
											</div>
											<div class="col-xs-3">
												<h4>
													<small>등록 일자 : </small>
												</h4>
												<h4 class="product-name">
													<strong>${cartlist[i-1].orderdate }</strong>
												</h4>

											</div>
											<div class="col-xs-6">
												<div class="col-xs-4 text-right">
													<h4>
														<small>주문 완료 상태 : </small>
													</h4>
													<h6>
														<strong>${cartlist[i-1].pstatus }<span
															class="text-muted"></span></strong>
													</h6>
												</div>
												<div class="col-xs-1">
													<h4>
														<small>ID </small>
													</h4>
													<h6>
														<strong>${cartlist[i-1].cust_id }</strong>
													</h6>
												</div>
											</div>
										</div>

									</form>
								</c:forEach>
							</div>


						</div>
					</div>
				</div>
			</div>
			<p class="cart">
				You have no items in your shopping cart.<br>Click<a
					href="index.html"> here</a> to continue shopping
			</p>
		</div>
		</li>
	</c:when>
	<c:otherwise>
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
	</c:otherwise>
</c:choose>