<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	String name = (String) pageContext.getAttribute("name");
    	String age = (String) pageContext.getAttribute("age");
    	//홈페이지의 메뉴와 같은 페이지가 바뀌어도 계속 있는 것들에 관하여 사용
    	//
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>
	<h2>포함되는 파일</h2>
	<div>
		<p>Name : <%=name %></p>
		<p>Age  : <%=age %></p>
	</div>
</body>
</html>