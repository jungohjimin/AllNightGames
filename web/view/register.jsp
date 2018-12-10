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

		$('input[name="regi"]').click(function() {
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
			$('#register-form').attr('method', 'post');
			$('#register-form').attr('action', 'registerimpl.ang');
			$('#register-form').submit();
		});

	});
</script>
<script>
	$(document).ready(function() {

		$('input[name="check"]').click(function() {
			var id = $('input[name="cust_id"]').val();
			var pwd = '';
			var name = $('input[name="cust_name"]').val();
			var birthdate = $('input[name="cust_birthdate"]').val();
			var phone = $('input[name="cust_phone"]').val();
			var address = $('input[name="cust_address"]').val();
			var email = $('input[name="cust_email"]').val();

			if (id == null || id == '') {
				alert('ID Madatory Filled !');
				return;
			}

			$('#register-form').attr('method', 'post');
			$('#register-form').attr('action', 'registercheck.ang');
			$('#register-form').submit();
		});

	});
</script>


<div class="wrap">
	<h4 class="title">회원가입</h4>
	<form id="register-form">
		<div class="col_1_of_2 span_1_of_2">
			<fieldset class="input" style="align: left">
				<p id="login-form-username">
					<label for="modlgn_username">ID</label>

					<c:choose>
						<c:when test="${check != null }">
							<c:if test="${check != 'no' }">
								<input type="text" name="cust_id" class="inputbox" size="18"
									autocomplete="off" value="${check }">
								<h5>사용 가능한 아이디입니다.</h5>
							</c:if>
							<c:if test="${check == 'no' }">
								<input type="text" name="cust_id" class="inputbox" size="18"
									autocomplete="off">
								<h5>중복되어 사용이 불가능한 아이디입니다.</h5>
							</c:if>

						</c:when>
						<c:otherwise>
							<input type="text" name="cust_id" class="inputbox" size="18"
								autocomplete="off">
						</c:otherwise>
					</c:choose>
					<input type="button" name="check" value="중복확인">
				</p>

				<br>
				<p id="login-form-password">
					<label for="modlgn_passwd">Password</label> <input type="password"
						name="cust_pw" class="inputbox" size="18" autocomplete="off">
				</p>
				<br>
				<p id="login-form-username">
					<label for="modlgn_username">Name</label> <input type="text"
						name="cust_name" class="inputbox" size="18" autocomplete="off">
				</p>
				<br>
				<p id="login-form-username">
					<label for="modlgn_username">Birthdate (Ex.930917)</label> <input
						type="text" name="cust_birthdate" class="inputbox" size="18"
						autocomplete="off">
				</p>
				<br>
			</fieldset>
			<fieldset class="input" style="align: right">
				<p id="login-form-username">
					<label for="modlgn_username">Phone (Ex.01099523125)</label> <input
						type="text" name="cust_phone" class="inputbox" size="18"
						autocomplete="off">

				</p>
				<br>
				<p id="login-form-password">
					<label for="modlgn_passwd">Address</label> <input type="text"
						name="cust_address" class="inputbox" size="18" autocomplete="off">
				</p>
				<br>
				<p id="login-form-password">
					<label for="modlgn_passwd">E-mail</label> <input type="text"
						name="cust_email" class="inputbox" size="18" autocomplete="off">
				</p>
				<br>
				<p id="login-form-username">
					<label for="modlgn_passwd">Sex</label><br> <INPUT TYPE=RADIO
						NAME=cust_sex VALUE='M' CHECKED> Male <INPUT TYPE=RADIO
						NAME=cust_sex VALUE='F'> Female
				</p>
				<br>
			</fieldset>
			<br>
			<div class="remember">
				<div class="clear"></div>

				<div class="clear"></div>
			</div>

		</div>
		<br> <br>
		<div class="btn_form">
			<p id="login-form-remember">
				<label for="modlgn_remember"><a href="#">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Forget
						Your Password ? </a></label>
			</p>

			<input type="button" value="Register" name="regi">

			<p class="terms">
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;By clicking 'Create
				Account' you agree to the <a href="#">Terms &amp; Conditions</a>.
			</p>
			<div class="clear"></div>
		</div>
	</form>

</div>