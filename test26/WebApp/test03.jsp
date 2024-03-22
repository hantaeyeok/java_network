<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@	taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<%@ page import="java.util.*" %>
<%@ page import="org.kh.dto.Member" %>
<!DOCTYPE html>
<html>
<head>
<%
	pageContext.setAttribute("pname", "조우진");
	request.setAttribute("rname", "유정환");
	session.setAttribute("sname", "강범준");
	application.setAttribute("aname", "김필규");
%>
<meta charset="UTF-8">
<title>폼 데이터 전송과 표현언어(EL)</title>
</head>
<body>
<%@ include file="menu.jsp" %>
<hr>
<h2>폼 데이터 전송과 표현언어(EL)</h2>
<hr>
<div>
	<a href="test03_get.jsp?tname=배곤희">GET 전송</a>
</div>
<div>
	<h3>POST 전송(form 전송)</h3>
	<hr>
	<form action="test03_post.jsp" method="post">
		<input type="text" size="40" name="id" id="id" placeholder="아이디 입력" required><br><br>
		<input type="number" size="40" name="no" id="no" value="1" min="1" max="100" required><br><br>
		<input type="password" size="40" name="pw" id="pw" placeholder="암호입력" required><br><br>
		<input type="text" size="40" name="name" id="name" placeholder="이름입력" required><br><br>
		<div>
			<h4>좋아하는 스포츠 -2개 이상 선택</h4>
			<input type="checkbox" name="sports" id="sports1" value="축구"><label for="sports1">축구</label><br><br>
			<input type="checkbox" name="sports" id="sports2" value="야구"><label for="sports1">야구</label><br><br>
			<input type="checkbox" name="sports" id="sports3" value="농구"><label for="sports1">농구</label><br><br>
			<input type="checkbox" name="sports" id="sports4" value="배구"><label for="sports1">배구</label><br><br>
			<input type="checkbox" name="sports" id="sports5" value="피구"><label for="sports1">피구</label><br><br>
			
		</div>
		<input type="submit" value="회원추가">&nbsp;&nbsp;&nbsp;&nbsp;
		<input type="reset" value="취소"> 
	</form>
	
</div>
<h3></h3>
</body>
</html>