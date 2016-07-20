<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@taglib prefix="baobaotao" tagdir="/WEB-INF/tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>论坛版块页面</title>
<c:url var="url" value="/static/css/board2.css" />
<link rel="stylesheet" type="text/css" href="${url}">
<c:url var="url" value="/static/css/textspan.css" />
<link rel="stylesheet" type="text/css" href="${url}">
</head>


<body>
	<%@ include file="includeTop.jsp"%>

	<div class="banner">
		<!--  <img id="img1" src="/images/sign.jpg" />-->

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



	<div class="content">
		<div class="content_left">
			<div class="bkfl">版块分类</div>
			<div class="yj">
				业界
				<div class="yj_block">
				
					<c:forEach var="board" items="${boards}">
						<tr>
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
				<div>
					<table border="1px" width="100%">
						<tr>
							<c:if test="${USER_CONTEXT.userType == 2 || isboardManager}">
								<td></td>
							</c:if>
							<td bgcolor="#EEEEEE">${board.boardName}</td>
							<td colspan="4" bgcolor="#EEEEEE" align="right"><a
								href="<c:url value="/board/addTopicPage-${board.boardId}.html"/>">发表新话题</a>
							</td>

						</tr>
						<tr>
							<c:if test="${USER_CONTEXT.userType == 2 || isboardManager}">
								<td><script type="text/javascript">
									function switchSelectBox() {
										var selectBoxs = document
												.all("topicIds");
										if (!selectBoxs)
											return;
										if (typeof (selectBoxs.length) == "undefined") {//only one checkbox
											selectBoxs.checked = event.srcElement.checked;
										} else {//many checkbox ,so is a array 
											for (var i = 0; i < selectBoxs.length; i++) {
												selectBoxs[i].checked = event.srcElement.checked;
											}
										}
									}
								</script> <input type="hidden" onclick="switchSelectBox()" /></td>
							</c:if>
							<td width="50%">标题</td>
							<td width="10%">发表人</td>
							<td width="10%">回复数</td>
							<td width="15%">发表时间</td>
							<td width="15%">最后回复时间</td>
						</tr>
						<c:set var="isboardManager" value="${false}" />
						<c:forEach items="${USER_CONTEXT.manBoards}" var="manBoard">
							<c:if test="${manBoard.boardId == board.boardId}">
								<c:set var="isboardManager" value="${true}" />
							</c:if>
						</c:forEach>
						<c:forEach var="topic" items="${pagedTopic.result}">
							<tr>
								<c:if test="${USER_CONTEXT.userType == 2 || isboardManager}">
									<td><input type="checkbox" name="topicIds"
										value="${topic.topicId}" /></td>
								</c:if>
								<td><a
									href="<c:url value="/board/listTopicPosts-${topic.topicId}.html"/>">
										<c:if test="${topic.digest > 0}">
											<font color=red>★</font>
										</c:if> ${topic.topicTitle}
								</a></td>
								<td>${topic.user.userName}<br> <br>
								</td>
								<td>${topic.replies}<br> <br>
								</td>
								<td><fmt:formatDate pattern="yyyy-MM-dd HH:mm"
										value="${topic.createTime}" /></td>
								<td><fmt:formatDate pattern="yyyy-MM-dd HH:mm"
										value="${topic.lastPost}" /></td>
							</tr>
						</c:forEach>
					</table>
				</div>
				<baobaotao:PageBar
					pageUrl="/board/listBoardTopics-${board.boardId}.html"
					pageAttrKey="pagedTopic" />
				<c:if test="${USER_CONTEXT.userType == 2 || isboardManager}">
					<script type="text/javascript">
						function getSelectedTopicIds() {
							var selectBoxs = document.all("topicIds");
							if (!selectBoxs)
								return null;
							if (typeof (selectBoxs.length) == "undefined"
									&& selectBoxs.checked) {
								return selectBoxs.value;
							} else {//many checkbox ,so is a array 
								var ids = "";
								var split = ""
								for (var i = 0; i < selectBoxs.length; i++) {
									if (selectBoxs[i].checked) {
										ids += split + selectBoxs[i].value;
										split = ",";
									}
								}
								return ids;
							}
						}
						function deleteTopics() {
							var ids = getSelectedTopicIds();
							if (ids) {
								var url = "<c:url value="/board/removeTopic.html"/>?topicIds="
										+ ids + "&boardId=${board.boardId}";
								//alert(url);
								location.href = url;
							}
						}
						function setDefinedTopis() {
							var ids = getSelectedTopicIds();
							if (ids) {
								var url = "<c:url value="/board/makeDigestTopic.html"/>?topicIds="
										+ ids + "&boardId=${board.boardId}";
								location.href = url;
							}
						}
					</script>
					<input type="button" value="删除" onclick="deleteTopics()">
					<input type="button" value="置精华帖" onclick="setDefinedTopis()">
				</c:if>
	</br>
	</br>
	</br>
				<div class="footer">
					<div class="footer_line_1">虎扑（上海）文化传播股份有限公司 沪B2-20120042
						沪ICP备05037078号-13</div>
					<div class="footer_line_2">Copyright by 虎扑JRs & 虎扑体育 - 网站声明 -
						手机虎扑 - 在虎扑工作 - 联系我们 - 赛事案例 - 广告服务 - 网站地图 - NBA - CBA - 足球 - 中超 -赛车</div>
					<!--  <img  id="img3" src="/images/footer_img.jpg" class="footer_img"/>-->
					<img src="../static/images/footer_img.jpg" class="footer_img" />
				</div>



				<%-- 				<table border="0" width="100%">
					<tr>
						
					</tr>
					<tr>

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



			</div>
		</div>
		<!-- <div class="content_right"></div> -->
	</div>





	<%-- 	<div>
		<table border="1px" width="100%">
			<tr>
				<c:if test="${USER_CONTEXT.userType == 2 || isboardManager}">
					<td></td>
				</c:if>
				<td bgcolor="#EEEEEE">${board.boardName}</td>
				<td colspan="4" bgcolor="#EEEEEE" align="right"><a
					href="<c:url value="/board/addTopicPage-${board.boardId}.html"/>">发表新话题</a>
				</td>

			</tr>
			<tr>
				<c:if test="${USER_CONTEXT.userType == 2 || isboardManager}">
					<td><script type="text/javascript">
			            function switchSelectBox(){
			                var selectBoxs = document.all("topicIds");
			                if(!selectBoxs) return ;
			                if(typeof(selectBoxs.length) == "undefined"){//only one checkbox
			                    selectBoxs.checked = event.srcElement.checked;
			                }else{//many checkbox ,so is a array 
			                  for(var i = 0 ; i < selectBoxs.length ; i++){
			                     selectBoxs[i].checked = event.srcElement.checked;
			                  }
			                } 
			            }
			        </script> <input type="hidden" onclick="switchSelectBox()" /></td>
				</c:if>
				<td width="50%">标题</td>
				<td width="10%">发表人</td>
				<td width="10%">回复数</td>
				<td width="15%">发表时间</td>
				<td width="15%">最后回复时间</td>
			</tr>
			<c:set var="isboardManager" value="${false}" />
			<c:forEach items="${USER_CONTEXT.manBoards}" var="manBoard">
				<c:if test="${manBoard.boardId == board.boardId}">
					<c:set var="isboardManager" value="${true}" />
				</c:if>
			</c:forEach>
			<c:forEach var="topic" items="${pagedTopic.result}">
				<tr>
					<c:if test="${USER_CONTEXT.userType == 2 || isboardManager}">
						<td><input type="checkbox" name="topicIds"
							value="${topic.topicId}" /></td>
					</c:if>
					<td><a
						href="<c:url value="/board/listTopicPosts-${topic.topicId}.html"/>">
							<c:if test="${topic.digest > 0}">
								<font color=red>★</font>
							</c:if> ${topic.topicTitle}
					</a></td>
					<td>${topic.user.userName}<br> <br>
					</td>
					<td>${topic.replies}<br> <br>
					</td>
					<td><fmt:formatDate pattern="yyyy-MM-dd HH:mm"
							value="${topic.createTime}" /></td>
					<td><fmt:formatDate pattern="yyyy-MM-dd HH:mm"
							value="${topic.lastPost}" /></td>
				</tr>
			</c:forEach>
		</table>
	</div>
	<baobaotao:PageBar
		pageUrl="/board/listBoardTopics-${board.boardId}.html"
		pageAttrKey="pagedTopic" />
	<c:if test="${USER_CONTEXT.userType == 2 || isboardManager}">
		<script type="text/javascript">
	            function getSelectedTopicIds(){
	                var selectBoxs = document.all("topicIds");
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
	            function deleteTopics(){
	               var ids = getSelectedTopicIds();
	               if(ids){
	                  var url = "<c:url value="/board/removeTopic.html"/>?topicIds="+ids+"&boardId=${board.boardId}";
	                  //alert(url);
	                  location.href = url;
	               }
	            }
	            function setDefinedTopis(){
	               var ids = getSelectedTopicIds();
	               if(ids){
	                  var url = "<c:url value="/board/makeDigestTopic.html"/>?topicIds="+ids+"&boardId=${board.boardId}";
	                  location.href = url;
	               }	            
	            }
	         </script>
		<input type="button" value="删除" onclick="deleteTopics()">
		<input type="button" value="置精华帖" onclick="setDefinedTopis()">
	</c:if>
 --%>

</body>
</html>
