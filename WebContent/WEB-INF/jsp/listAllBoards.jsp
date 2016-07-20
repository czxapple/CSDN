<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>论坛首页</title>
<c:url var="url" value="static/css/board.css" />
<link rel="stylesheet" type="text/css" href="${url}">
<c:url var="url" value="static/css/textspan.css" />
<link rel="stylesheet" type="text/css" href="${url}">
</head>

<body>
	<%@ include file="includeTop.jsp"%>

	<%-- <table border="1px" width="100%">
		<tr>
			<td colspan="3" bgcolor="#EEEEEE">所有论坛版块</td>
		</tr>
		<tr>
		<tr>
			<c:if test="${USER_CONTEXT.userType == 2}">
				<td><script>
			            function switchSelectBox(){
			                var selectBoxs = document.all("boardIds");
			                if(!selectBoxs) return ;
			                if(typeof(selectBoxs.length) == "undefined"){//only one checkbox
			                    selectBoxs.checked = event.srcElement.checked;
			                }else{//many checkbox ,so is a array 
			                  for(var i = 0 ; i < selectBoxs.length ; i++){
			                     selectBoxs[i].checked = event.srcElement.checked;
			                  }
			                } 
			            }
			        </script> <input type="checkbox" onclick="switchSelectBox()" /></td>
			</c:if>
			<td width="20%">版块名称</td>
			<td width="70%">版块简介</td>
			<td width="10%">主题帖数</td>
		</tr>
		<c:forEach var="board" items="${boards}">
			<tr>
				<c:if test="${USER_CONTEXT.userType == 2}">
					<td><input type="checkbox" name="boardIds"
						value="${board.boardId}" /></td>
				</c:if>
				<td><a
					href="<c:url value="/board/listBoardTopics-${board.boardId}.html"/>">${board.boardName}</a></td>
				<td>${board.boardDesc}</td>
				<td>${board.topicNum}</td>
			</tr>
		</c:forEach>
	</table> --%>

	<!-- <div class="head"><span>欢迎访问CSDN，请先</span><a href="register.html" class="register">注册</a><span>或者</span><a href="login.html" class="login">登陆</a> </div> -->
	<div class="banner">
		<!--  <img id="img1" src="/images/sign.jpg" />-->
		<% %>
		<img src="static/images/sign.jpg" />
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
		<img id="img2" src="static/images/banner.jpg" />
	</div>
	<div class="content">
		<div class="content_left">
			<div class="bkfl">版块分类</div>
			<div class="yj">
				业界
				<div class="yj_block">
					<!-- <a href="#">云计算</a><a href="#">大数据</a><a href="#">人工智能</a><a href="#">1111</a>
                <a href="#">移动开发</a><a href="#">架构</a><a href="#">数据库开发</a><a href="#">1111</a> -->
					<c:forEach var="board" items="${boards}">
						<tr>
							<%-- <c:if test="${USER_CONTEXT.userType == 2}">
								<td><input type="checkbox" name="boardIds"
									value="${board.boardId}" /></td>
							</c:if> --%>
							<td><a
								href="<c:url value="/board/listBoardTopics-${board.boardId}.html"/>">${board.boardName}</a></td>
						</tr>

					</c:forEach>
				</div>
			</div>
			<div class="yjs">
				云计算
				<div class="yjs_block">
					<a href="#">移动开发</a><a href="#">iOS</a><a href="#">Android</a><a
						href="#">Qt</a> <a href="#">WP</a><a href="#">云计算</a><a href="#">IaaS</a><a
						href="#">分布式计算/Hadoop</a> <a href="#">Java技术</a><a href="#">Pass/SaaS</a><a
						href="#">Java Web 开发</a><a href="#">Java EE</a> <a href="#">Java其他相关</a><a
						href="#">.NET技术</a><a href="#">.NET Framework</a><a href="#">C#</a>
					<a href="#">.NET分析与设计</a><a href="#">ASP .NET</a><a href="#">VB
						.NET</a><a href="#">Web开发</a>
				</div>
			</div>
			<div class="dsj">
				大数据
				<div class="dsj_block">
					<a href="#">PHP</a><a href="#">JavaScript</a><a href="#">ASP</a><a
						href="#">HTML(CSS)</a> <a href="#">HTML5</a><a href="#">Apache</a><a
						href="#">开发语言/框架</a><a href="#">Delphi</a> <a href="#">VC/MFC</a><a
						href="#">VB</a><a href="#">C/C++</a><a href="#">C++ Builder</a> <a
						href="#">移动开发</a><a href="#">分布式计算/Hadoop</a><a href="#">云计算</a><a
						href="#">iOS</a> <a href="#">其他开发语言</a><a href="#">.NET技术</a><a
						href="#">ASP .NET</a><a href="#">Java技术</a>
				</div>
			</div>
			<div class="loT">
				lOS
				<div class="loT_block">
					<a href="#">数据库开发</a><a href="#">MS-SQL Server</a><a href="#">Oracle</a><a
						href="#">PowerBuilder</a> <a href="#">Informatica</a><a href="#">其他数据库开发</a><a
						href="#">硬件/嵌入式开发</a><a href="#">嵌入开发(WinCE)</a> <a href="#">驱动开发/核心开发</a><a
						href="#">硬件设计</a><a href="#">单片机/工控</a><a href="#">汇编语言</a> <a
						href="#">VxWorks开发</a><a href="#">系统维护与使用区</a><a href="#">应用程序开发区</a><a
						href="#">内核源代码研究区</a> <a href="#">驱动程序开发区</a><a href="#">CPU和硬件区</a><a
						href="#">Apache</a><a href="#">VB .NET</a>
				</div>
			</div>
			<div class="rgzn">
				人工智能
				<div class="rgzn_block">
					<a href="#">PHP</a><a href="#">JavaScript</a><a href="#">ASP</a><a
						href="#">HTML(CSS)</a> <a href="#">HTML5</a><a href="#">Apache</a><a
						href="#">开发语言/框架</a><a href="#">Delphi</a> <a href="#">VC/MFC</a><a
						href="#">VB</a><a href="#">C/C++</a><a href="#">C++ Builder</a> <a
						href="#">移动开发</a><a href="#">分布式计算/Hadoop</a><a href="#">云计算</a><a
						href="#">iOS</a> <a href="#">其他开发语言</a><a href="#">.NET技术</a><a
						href="#">ASP .NET</a><a href="#">Java技术</a>
				</div>
			</div>
			<div class="ydkf">
				移动开发
				<div class="ydkf_block">
					<a href="#">Java技术</a><a href="#">Pass/SaaS</a><a href="#">Java
						Web 开发</a><a href="#">Java EE</a> <a href="#">Java其他相关</a><a href="#">.NET技术</a><a
						href="#">.NET Framework</a><a href="#">C#</a> <a href="#">Informatica</a><a
						href="#">其他数据库开发</a><a href="#">硬件/嵌入式开发</a><a href="#">嵌入开发(WinCE)</a>
					<a href="#">驱动开发/核心开发</a><a href="#">硬件设计</a><a href="#">单片机/工控</a><a
						href="#">汇编语言</a> <a href="#">VC/MFC</a><a href="#">VB</a><a
						href="#">C/C++</a><a href="#">C++ Builder</a>
				</div>
			</div>
			<div class="jg">
				架构
				<div class="jg_block">
					<a href="#">VxWorks开发</a><a href="#">系统维护与使用区</a><a href="#">应用程序开发区</a><a
						href="#">内核源代码研究区</a> <a href="#">驱动程序开发区</a><a href="#">CPU和硬件区</a><a
						href="#">Apache</a><a href="#">VB .NET</a> <a href="#">Java技术</a><a
						href="#">Pass/SaaS</a><a href="#">Java Web 开发</a><a href="#">Java
						EE</a> <a href="#">Java其他相关</a><a href="#">.NET技术</a><a href="#">.NET
						Framework</a><a href="#">C#</a> <a href="#">移动开发</a><a href="#">分布式计算/Hadoop</a><a
						href="#">云计算</a><a href="#">iOS</a>
				</div>
			</div>
		</div>
		<div class="content_middle">
			<div class="content_middle_inner">
				<div class="content_middle_inner_title">CSDN论坛热帖</div>
				<div class="content_middle_inner_banner">
					<span>业界论坛</span>&nbsp;亮回贴
				</div>
				



				
				<table border="0" width="100%">
					<tr>
						<!-- <td colspan="5" bgcolor="#EEEEEE">所有论坛版块</td> -->
					</tr>
					<tr>
					<tr>
						<c:if test="${USER_CONTEXT.userType == 2}">
							<td><script type="text/javascript">
                            function switchSelectBox(){
                                var selectBoxs = document.all("boardIds");
                                if(!selectBoxs) return ;
                                if(typeof(selectBoxs.length) == "undefined"){//only one checkbox
                                    selectBoxs.checked = event.srcElement.checked;
                                }else{//many checkbox ,so is a array
                                    for(var i = 0 ; i < selectBoxs.length ; i++){
                                        selectBoxs[i].checked = event.srcElement.checked;
                                    }
                                }
                            }
                        </script> <input type="checkbox"
								onclick="switchSelectBox()" /></td>
						</c:if>
						<td width="20%">版块名称</td>
						<td width="70%">版块简介</td>
						<td width="10%">主题帖数</td>
					</tr>
					<c:forEach var="board" items="${boards}">
						<tr>
							<c:if test="${USER_CONTEXT.userType == 2}">
								<td><input type="checkbox" name="boardIds"
									value="${board.boardId}" /></td>
							</c:if>
							<td><a
								href="<c:url value="/board/listBoardTopics-${board.boardId}.html"/>">${board.boardName}</a></td>
							<td>${board.boardDesc}</td>
							<td>${board.topicNum}</td>
						</tr>
					</c:forEach>
				</table>



			</div>
		</div>
		<div class="content_right">
			<div class="content_right_inner">
				<div class="content_right_inner_banner">板块列表</div>

				<ul>业界论坛
				</ul>
				<li>PHP</li>
				<li>JavaScript</li>
				<li>ASP</li>
				<li>HTML(CSS)</li>
				<li>VC/MFC</li>
				<li>移动开发</li>
				<li>.NET技术</li>
				<li>Hadoop</li>
				<li>VB</li>
				<li>Apache</li>
				<li>开发语言</li>
				<li>C/C++</li>
				<li>C++ Builder</li>
				<li>Delphi</li>
				<li>iOS</li>
				<li>Java技术</li>
				<li>WP</li>
				<li>Pass/SaaS</li>
				<li>IaaS</li>
				<li>Android</li>
				<li>Java EE</li>
				<li>VB .NET</li>
				<li>Web开发</li>
				<li>云计算</li>
				<div class="content_right_inner_footer">展开更多》</div>
			</div>
		</div>
	</div>
	</br>
	</br>
	</br>
	<div class="footer">
		<div class="footer_line_1">虎扑（上海）文化传播股份有限公司 沪B2-20120042
			沪ICP备05037078号-13</div>
		<div class="footer_line_2">Copyright by 虎扑JRs & 虎扑体育 - 网站声明 -
			手机虎扑 - 在虎扑工作 - 联系我们 - 赛事案例 - 广告服务 - 网站地图 - NBA - CBA - 足球 - 中超 -赛车</div>
		<!--  <img  id="img3" src="/images/footer_img.jpg" class="footer_img"/>-->
		<img src="static/images/footer_img.jpg" class="footer_img" />
	</div>

	<c:if test="${USER_CONTEXT.userType == 2 || isboardManager}">
		<script type="text/javascript">
	            function getSelectedBoardIds(){
	                var selectBoxs = document.all("boardIds");
	                if(!selectBoxs) return null;
	                if(typeof(selectBoxs.length) == "undefined" && selectBoxs.checked){   
	                    return selectBoxs.value;
	                }else{//many checkbox ,so is a array 
	                  var ids = "";
	                  var split = ""
	                  for(var i = 0 ; i < selectBoxs.length ; i++){
	                     if(selectBoxs[i].checked){
	                        ids += split+selectBoxs[i].value;
	                        split = ",";
	                     }
	                  }
	                  return ids;
	                }
	            }
	            function deleteBoards(){
	               var ids = getSelectedBoardIds();
	               if(ids){
	                  var url = "<c:url value="${context}/board/removeBoard.html"/>?boardIds="+ids+"";
	                  //alert(url);
	                  location.href = url;
	               }
	            }
	           
	         </script>
		<input type="button" value="删除" onclick="deleteBoards()">
	</c:if>
</body>
</html>
