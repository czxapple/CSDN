<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>用户锁定及解锁</title>

<c:url var="url" value="/static/css/board.css" />
<link rel="stylesheet" type="text/css" href="${url}">
<c:url var="url" value="/static/css/textspan.css" />
<link rel="stylesheet" type="text/css" href="${url}">

</head>
<body>
	<%@ include file="includeTop.jsp"%>

	<div class="banner">
		<!--  <img id="img1" src="/images/sign.jpg" />-->
		<%
			
		%>
		<img src="../static/images/sign.jpg" />
		<ul class="banner_top">
			<li>极客头条</li>
			<li>知识库</li>
			<li>学院</li>
			<li>论坛</li>
			<li>博客</li>
			<li>下载</li>
			<li>问答</li>
			<li>商城</li>
			<li>ITeye</li>
			<li>CODE</li>
			<li>活动</li>
			<li>CTO</li>
			<li>外包</li>
			<li>程序员</li>
			<li>APP</li>
		</ul>
		<ul class="banner_middle">
			<li>业界</li>
			<li>云计算</li>
			<li>大数据</li>
			<li>loT</li>
			<li>人工智能</li>
			<li>移动开发</li>
			<li>架构</li>
			<li>数据库</li>
			<li>Azure</li>
			<li>华为云计算</li>
			<li>英特尔软件</li>
			<li>IBM大学</li>
			<li>异构开发</li>
			<li>AWS</li>
			<li>Qualcomm</li>
		</ul>
		<!--  <img  id="img2" src="images/banner.jpg"/>-->
		<img id="img2" src="../static/images/banner.jpg" />
	</div>

	<center>
		<form action="<c:url value="${context}/forum/userLockManage.html"/>"
			method="post">
			<table border="1px" width="1200px">
				<tr>
					<td width="20%" align="center">用户</td>
					<td width="80%" ><select name="userName">
							<option>请选择</option>
							<c:forEach var="user" items="${users}">
								<option value="${user.userName}">${user.userName}</option>
							</c:forEach>
					</select></td>
				</tr>
				<tr>
					<td width="20%" align="center">锁定/解锁</td>
					<td width="80%"><input type="radio" name="locked" value="1" />锁定
						<input type="radio" name="locked" value="0" />解锁</td>
				</tr>
				<tr>
					<td colspan="2"><input type="submit" value="保存"> <input
						type="reset" value="重置"></td>
				</tr>
			</table>
		</form>
	</center>
</body>
</html>
