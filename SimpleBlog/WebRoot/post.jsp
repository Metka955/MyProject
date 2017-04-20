<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'post.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<script type="text/javascript" src="js/jquery-3.1.1.min.js" ></script>
<link href="css/index.css" rel="stylesheet" type="text/css" />


<style type="text/css">
.doc {
	border-top: 6px solid #333333;
}

a,a:hover,.page a:hover {
	color: #d53c2e;
}

.btn:hover,.tag a:hover,.sider .page a:hover {
	background: #d53c2e;
}

html,body {
	font-family: "Hiragino Sans GB", "Microsoft YaHei", "微软雅黑", tahoma,
		arial, simsun, "宋体";
}

* {
	margin: 0;
	padding: 0;
}

body {
	text-align: left;
	font-size: 12px;
	line-height: normal;
	background-color: transparent;
}

.clearfix:after {
	display: block;
	visibility: hidden;
	clear: both;
	height: 0;
	overflow: hidden;
	content: ".";
}

.clearfix {
	zoom: 1;
}

.f-fl {
	float: left;
}

.f-fr {
	float: right;
}

.w-tbu,.w-wb em {
	background: url(/rsc/img/icon2-8.png?006) no-repeat 999px 999px;
}

.w-tbu {
	display: block;
	width: 24px;
	height: 29px;
	overflow: hidden;
	text-indent: -2000px;
	cursor: pointer;
	background-position: -55px -683px;
}

.w-tbu-sel {
	background-position: -76px -683px;
}
</style>
</head>

<body>
	<div class="doc">
		<jsp:include page="header.jsp"></jsp:include>
		<div class="main">
			<div class="wrapper">

				<div class="article">
					<div class="sidel">
						<ul class="block label">
							
							
							<li style="padding:0px"><a
								href="http://congqianyouzhiyu.lofter.com/post/1d6754a0_f2cb04e">2017-04-14</a></li>
							<li style="padding:0px"><a 
								href="javascript:void(0)" >${article.clickCount }次浏览量</a></li>
						</ul>
						
						<!-- 文章标签  -->
						<ul class="block tag">
						 	
						 	<c:forEach var="tag" items="${article.tag.trim().split(' ')}">
						 		<li><a href="ArticleServlet?op=tagSearch&tag=${tag}">${tag }</a></li>
						 		
						 	</c:forEach>
						 
                                       
                         </ul>

					</div>

					<div class="mainc">
						<div class="block">
							<div class="text">
								<h2>
									${article.title}
								</h2>
								<div class="cont">

									<p>
										${article.content}
									</p>

								</div>
							</div>
						</div>
					</div>

				</div>





				<div class="page">
					<div class="prev">
						
						<c:choose>
							<c:when test="${article.articleId == minIndex }">
							</c:when>
							<c:otherwise>
								<a href="ArticleServlet?getPage=prev&op=post&articleId=${article.articleId-1}">←上一篇</a>
							</c:otherwise>
						</c:choose>
						
					<!-- 	<a href="http://congqianyouzhiyu.lofter.com/post/1d6754a0_f2cb051">←上一篇</a> -->
					</div>

					<div class="next">
						<c:choose>
							<c:when test="${article.articleId == maxIndex }">
							</c:when>
							<c:otherwise>
								<a href="ArticleServlet?getPage=next&op=post&articleId=${article.articleId+1}">下一篇→</a>
							</c:otherwise>
						</c:choose>
						<!-- <a href="http://congqianyouzhiyu.lofter.com/post/1d6754a0_f2cb048">下一篇→</a> -->
					</div>

				</div>


				<div class="comment">

					<div class="nctitle">评论</div>
					<!-- <iframe id="comment_frame" allowtransparency="true" width="530px" scrolling="no" frameborder="0" style="background-color:transparent; overflow:hidden;" src="http://www.lofter.com/comment.do?pid=254586958&bid=493311136&listlinkcolor=d53c2e&listcontentcolor=777&listbordercolor=ECECEC&inputbordercolor=ECECEC&btbgcolor=BCBCBC"></iframe>-->

					<!--评论输入框-->
					<div class="commentMsg">
						<div id="" contenteditable="true"
							style=" overflow-y:auto; border:solid 1px gainsboro;width: 518px;height: 130px;margin-left: 4px;margin-top: 6px;">

						</div>
					</div>

                

					<div class="fabu">

						<!-发布按钮-->
						<label>发布</label>
					</div>
					
					
					
				</div>

			</div>
			<div class="sider">


				<div class="page">
					<div class="prev">
					
						<c:choose>
							<c:when test="${article.articleId == minIndex }">
							</c:when>
							<c:otherwise>
								<a href="ArticleServlet?getPage=prev&op=post&articleId=${article.articleId-1}">&lt;&lt;上一篇</a>
							</c:otherwise>
						</c:choose>
					
			<!-- 		
					
					
						<a href="http://congqianyouzhiyu.lofter.com/post/1d6754a0_f2cb051"
							id="__prev_permalink__">&lt;&lt;上一篇</a> -->
					</div>

					<div class="next">
					
						<c:choose>
							<c:when test="${article.articleId == maxIndex }">
							</c:when>
							<c:otherwise>
								<a href="ArticleServlet?getPage=next&op=post&articleId=${article.articleId+1}">下一篇&gt;&gt;</a>
							</c:otherwise>
						</c:choose>
						
						<!-- <a href="http://congqianyouzhiyu.lofter.com/post/1d6754a0_f2cb048"
							id="__next_permalink__">下一篇&gt;&gt;</a> -->
					</div>

				</div>

				<div class="sch">
					<form action="ArticleServlet" method="post">
						<input value="搜索" type="text" name="q"
							onFocus="if(this.value=='搜索'){this.value='';}"
							onBlur="if(this.value==''){this.value='搜索';}" class="txt" /> <input
							type="submit" class="btn" value="搜索" />
							<input type="hidden" name="op" value="likeSearch">
					</form>
				</div>
				<div class="footer">
					<p>
						<span title="Copyright" style="cursor:pointer;">&copy;</span>&nbsp;<a
							href="index.jsp">从前有只鱼</a>
					</p>
					Powered by <a href="http://www.lofter.com">LOFTER</a>
				</div>
			</div>
		</div>
	</div>
	</div>

</body>
</html>
