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
			<form method="post" action="writeAction.jsp">
 				<table class="table table-striped" style="text-align: center; border: 1px solid #dddddd">
				<thead>
					<tr>
						<th colspan="2"style="background-clolo: #eeeeee; text-align: center;">게시판 글쓰기 양식</th>
						
					</tr>
				</thead>
				<tbody>
					<tr>
						<td><input type="text" class="form-control" placeholder="글 제목" name="bbsTitle" maxlength="50"></td>
					</tr>
					<tr>
						<td><textarea class="form-control" placeholder="글 내용" name="bbsContent" maxlength="2048" style="height :350px;"></textarea></td>
					</tr>
				</tbody>
			</table>
			<input type="submit"class ="btn btn-primary pull-right" value="글쓰기">
 			</form>
		</div>
	</div>
 <!-- 애니매이션 담당 JQUERY -->

 	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script> 

 <!-- 부트스트랩 JS  -->

	 <script src="js/bootstrap.js"></script>

</body>
</html>



