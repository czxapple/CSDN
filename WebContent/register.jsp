<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>用户注册</title>

<c:url var="url" value="static/css/style.css" />
<link rel="stylesheet" type="text/css" href="${url}">
<c:url var="url" value="static/css/normalize.css" />
<link rel="stylesheet" type="text/css" href="${url}">

<script type="text/javascript">
	function mycheck() {
		if (document.all("user.password").value != document.all("again").value) {
			alert("两次输入的密码不正确，请更正。");
			return false;
		} else {
			return true;
		}
	}
</script>

</head>

<body>

	<div class="wrapper">
		<form class="login" action="<c:url value="/register.html" />"
			method="post" onsubmit="return mycheck()">
			<p class="title">Register</p>
			<input type="text" name="userName" placeholder="Username" autofocus /> <i
				class="fa fa-user"></i> <input type="password"
				placeholder="Password" name="password" /> <i class="fa fa-key"></i>
			<input type="password" placeholder="Again" name="again" /> <i
				class="fa fa-key"></i> <a href="login.jsp">Go back to Login ?</a>
			<button>
				<i class="spinner"></i> <span class="state">Go Ahead</span>
			</button>
		</form>
		<footer>
		<a target="blank" href="http://boudra.me/">boudra.me</a></footer>
		</p>
	</div>

</body>












<%-- <script>
   function mycheck(){
      if(document.all("user.password").value != document.all("again").value){
         alert("两次输入的密码不正确，请更正。");
         return false;
      }else
      {
         return true;
      }
   }
</script>
</head>
<body>
	用户注册信息：
	<form action="<c:url value="/register.html" />" method="post"
		onsubmit="return mycheck()">
		<c:if test="${!empty errorMsg}">
			<div style="">${errorMsg}</div>
		</c:if>
		<table border="1px" width="60%">
			<tr>
				<td width="20%">用户名</td>
				<td width="80%"><input type="text" name="userName" /></td>
			</tr>
			<tr>
				<td width="20%">密码</td>
				<td width="80%"><input type="password" name="password" /></td>
			</tr>
			<tr>
				<td width="20%">密码确认</td>
				<td width="80%"><input type="password" name="again"></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="保存"> <input
					type="reset" value="重置"></td>
			</tr>
		</table>
	</form>
</body> --%>
</html>
