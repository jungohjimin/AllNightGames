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


<script src="/AllNightGames/view/resources/js/jquery.easydropdown.js"></script>
<style>
table, td, tr {
	width: 400px;
	border: 1px solid black;
	text-align: center;
}
</style>
<div class="wrap">
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
										<button type="button" class="btn btn-primary btn-sm btn-block">
											<span class="glyphicon glyphicon-share-alt"></span> Continue
											shopping
										</button>
									</a>
								</div>
							</div>
						</div>
					</div>
					<div class="panel-body">
					<c:forEach var="i" begin="1" end="${cartlist.size() }" step="1">
						<form id="delete-form" action="deleteimpl.ang?gid=${cartlist[i-1].gid }" method="post">

								<div class="row">
								
									<div class="col-xs-2">
										<img class="img-responsive" src="${cartlist[i-1].gimgname }">
									</div>
									<div class="col-xs-3">
										<h4 class="product-name">
											<strong>${cartlist[i-1].gname }</strong>
										</h4>
										<h4>
											<small>등록 일자 : </small>
										</h4>
									</div>
									<div class="col-xs-6">
										<div class="col-xs-4 text-right">
											<h6>
												<strong>${cartlist[i-1].gprice }원<span
													class="text-muted"></span></strong>
											</h6>
										</div>
										<div class="col-xs-1">
											<h6>
												<strong>${cartlist[i-1].count }</strong>
											</h6>
										</div>
										<div class="col-xs-4 text-right">
											<h6>
												<strong>${cartlist[i-1].gprice * cartlist[i-1].count }원<span
													class="text-muted"></span></strong>
											</h6>
										</div>
										<div class="col-xs-2">
											<input type="submit" name="dele" value="삭제">

										</div>
									</div>
								</div>

						</form>
						</c:forEach>
					</div>


					<div class="panel-footer">
						<div class="row text-center">
							<div class="col-xs-9">
								<h4 class="text-right">
									Total <strong> ${totalprice } 원 </strong>
								</h4>
							</div>
							<div class="col-xs-3">
							<a href="orderr.ang">
								<button type="button" name="checkout"
									class="btn btn-success btn-block">Checkout</button></a>

							</div>
						</div>
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