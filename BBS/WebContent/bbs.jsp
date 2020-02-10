<%@ page language="java" contentType="text/html; charset=UTF-8"

    pageEncoding="UTF-8"%>
<%@page import ="java.io.PrintWriter" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- 뷰포트 -->
<meta name="viewport" content="width=device-width" initial-scale="1">
<!-- 스타일시트 참조  -->
<link rel="stylesheet" href="css/bootstrap.min.css">
<title>jsp 게시판 웹사이트</title>
</head>
<body>
	<%
		String userID=null;
		if(session.getAttribute("userID") !=null){
			userID = (String) session.getAttribute("userID");
		}
	%>
 <!-- 네비게이션  -->
 <nav class="navbar navbar-default">
  <div class="navbar-header">
   <button type="button" class="navbar-toggle collapsed" 
    data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
    aria-expaned="false">
     <span class="icon-bar"></span>
     <span class="icon-bar"></span>
     <span class="icon-bar"></span>
    </button>
    <a class="navbar-brand"href="main.jsp">JSP 게시판</a>
  </div>
  <div class="collapse navbar-collapse" id="#bs-example-navbar-collapse-1">
   <ul class="nav navbar-nav">
    <li class = "active"><a href="bbs.jsp">계산기</a></li>
    <li><a href="bbs.jsp">게시판</a></li>
   </ul>
   <%
   	if(userID == null){
   %>
   		<ul class="nav navbar-nav navbar-right">
 
      <li><a href="login.jsp">로그인</a></li>
      <li><a href="join.jsp">회원가입</a></li>
     </ul>
   <%
   	}else{
   %>
   	<ul class="nav navbar-nav navbar-right">
 
      <li><a href="logoutAction.jsp">로그아웃</a></li>
     </ul>
   <%
   	}
   %>
 
    
  </div> 
 </nav>
	<div class ="container">
		<div class="row">
			<table class="table table-striped" style="text-align: center; border: 1px solid #dddddd">
				<thead>
					<tr>
						<th style="background-clolo: #eeeeee; text-align: center;">번호</th>
						<th style="background-clolo: #eeeeee; text-align: center;">제목</th>
						<th style="background-clolo: #eeeeee; text-align: center;">작성자</th>
						<th style="background-clolo: #eeeeee; text-align: center;">작성일</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>1</td>
						<td>안녕하세요.</td>
						<td>홍길동</td>
						<td>2017-05-04</td>
				</tbody>
			</table>
			<a href="write.jsp" class ="btn btn-primary pull-right">글쓰기</a>
		</div>
	</div>
 <!-- 애니매이션 담당 JQUERY -->

 	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script> 

 <!-- 부트스트랩 JS  -->

	 <script src="js/bootstrap.js"></script>

</body>
</html>



