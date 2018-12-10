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
		$('input[name="reg"]').click(function() {
			var id = $('input[name="cust_id"]').val();
			var pwd = $('input[name="cust_pw"]').val();
			var name = $('input[name="cust_name"]').val();
			var birthdate = $('input[name="cust_birthdate"]').val();
			var phone = $('input[name="cust_phone"]').val();
			var address = $('input[name="cust_address"]').val();
			var email = $('input[name="cust_email"]').val();
			
			if (id == null || id == '') {
				alert('ID Madatory Filled !');
				return;
			}

			if (pwd == null || pwd == '') {
				alert('PWD Madatory Filled !');
				return;
			}
			if (name == null || name == '') {
				alert('NAME Madatory Filled !');
				return;
			}
			if (birthdate == null || birthdate == '') {
				alert('Birthdate Madatory Filled !');
				return;
			}
			if (phone == null || phone == '') {
				alert('Phone Madatory Filled !');
				return;
			}
			if (address == null || address == '') {
				alert('Address Madatory Filled !');
				return;
			}
			if (email == null || email == '') {
				alert('Email Madatory Filled !');
				return;
			}
			
			$('#account-form').attr('method', 'post');
			$('#account-form').attr('action', 'accountimpl.ang');
			$('#account-form').submit();
		});

	});
</script>


<div class="wrap">
	<h4 class="title">회원 정보 수정</h4>
	<form id="account-form">
		<div class="col_1_of_2 span_1_of_2">
			<fieldset class="input" style="align: left">
				<p id="login-form-username">
					<label for="modlgn_username">&nbsp;&nbsp;&nbsp;&nbsp;ID</label>
					<input type="hidden" name="cust_id" value="${login_cust.cust_id }">
				<p>&nbsp;&nbsp;&nbsp;&nbsp;${login_cust.cust_id }</p>
				

				<br>
				<p id="login-form-password">
					<label for="modlgn_passwd">&nbsp;&nbsp;&nbsp;&nbsp;Password</label>
					<input type="password"
						name="cust_pw" class="inputbox" size="18" autocomplete="off">
				</p>
				<br>
				<p id="login-form-username">
					<label for="modlgn_username">&nbsp;&nbsp;&nbsp;&nbsp;Name</label> <input type="text"
						name="cust_name" class="inputbox" size="18" autocomplete="off">
				</p>
				<br>
				<p id="login-form-username">
					<label for="modlgn_username">&nbsp;&nbsp;&nbsp;&nbsp;Birthdate (Ex.930917)</label> <input
						type="text" name="cust_birthdate" class="inputbox" size="18"
						autocomplete="off">
				</p>
				<br>
			</fieldset>
			<fieldset class="input" style="align: right">
				<p id="login-form-username">
					<label for="modlgn_username">&nbsp;&nbsp;&nbsp;&nbsp;Phone (Ex.01099523125)</label> <input
						type="text" name="cust_phone" class="inputbox" size="18"
						autocomplete="off">

				</p>
				<br>
				<p id="login-form-password">
					<label for="modlgn_passwd">&nbsp;&nbsp;&nbsp;&nbsp;Address</label> <input type="text"
						name="cust_address" class="inputbox" size="18" autocomplete="off">
				</p>
				<br>
				<p id="login-form-password">
					<label for="modlgn_passwd">&nbsp;&nbsp;&nbsp;&nbsp;E-mail</label> <input type="text"
						name="cust_email" class="inputbox" size="18" autocomplete="off">
				</p>
				<br>
				<p id="login-form-username">
					<label for="modlgn_passwd">&nbsp;&nbsp;&nbsp;&nbsp;Sex</label><br> <INPUT TYPE=RADIO
						NAME=cust_sex VALUE='M' CHECKED> Male <INPUT TYPE=RADIO
						NAME=cust_sex VALUE='F'> Female
				</p>
				<br>
			</fieldset>
			<br>
			</p>
			&nbsp;&nbsp;<input type="button" name="reg" value="Register"
				class="grey">
			<div class="remember">
				<div class="clear"></div>

				<div class="clear"></div>
			</div>

		</div>
		<br> <br>
		<div class="clear"></div>
	</form>
</div>