<!DOCTYPE html>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta charset="UTF-8">
<title>Animated login form</title>
<!-- <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,700' rel='stylesheet' type='text/css'> -->
<!-- <link rel="stylesheet" href="static/css/font-awesome.min.css"> -->
<!-- <link rel="stylesheet" href="static/css/other.css"> -->


<c:url var="url" value="static/css/style.css" />
<link rel="stylesheet" type="text/css" href="${url}">
<c:url var="url" value="static/css/normalize.css" />
<link rel="stylesheet" type="text/css" href="${url}">



<!-- <script src="js/prefixfree.min.js"></script> -->
<!-- 	<script type="text/javascript" src="js/prefixfree.min.js"></script> -->

</head>

<%-- <body>
<c:if test="${!empty errorMsg}">
  <div style="color:red">${errorMsg}</div>
</c:if>
<form action="${context}/login/doLogin.html" method="post">
<table border="1px">
	<tr>
		<td width="20%">用户名</td>
		<td width="80%"><input type="text" name="userName"/></td>
	</tr>
	<tr>
		<td width="20%">密码</td>
		<td width="80%"><input type="password" name="password"/></td>
	</tr>
	<tr>
		<td colspan="2">
		   <input type="submit" value="登录">
		   <input type="reset" value="重置">
		</td>
	</tr>
</table>
</form>
</body> --%>

<body>
	<div class="wrapper">
		<c:if test="${!empty errorMsg}">
			<div style="color: red">${errorMsg}</div>
		</c:if>
		<form class="login"
			action="<c:url value="${context}/login/doLogin.html"/>" method="post">
			<p class="title">Log in</p>
			<input type="text" name="userName" placeholder="Username" autofocus />
			<i class="fa fa-user"></i> <input type="password" name="password"
				placeholder="Password" /> <i class="fa fa-key"></i> <a href="register.jsp">Wanner
				to Register ?</a>
			<button>
				<i class="spinner"></i> <span class="state">Log in</span>
			</button>
		</form>
		<footer>
			<a target="blank" href="http://boudra.me/">boudra.me</a>
		</footer>
		</p>
	</div>
	<!-- 	<script src="static/js/jqery.min.js"></script>
	<script type="text/javascript" src="static/js/jqery.min.js"></script>
	<script type="text/javascript" src="static/js/index.js"></script>
 -->

</body>
</html>
