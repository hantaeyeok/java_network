<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	pageContext.setAttribute("name", "한태역");
    	pageContext.setAttribute("age", "27");
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>include 실습</title>
</head>
<body>
	<h2>디렉토리를 이용한 include</h2>		<%-- 디렉토리를 이용한 include를 사용해야한다. 내외부가 일치하지만 --%>
		<%@ include file="inFile.jsp" %>
	<h2>액션태그를 이용한 include</h2>		<%-- 내외부가 일치하지 않아 사용하지 않는다. --%>
	<jsp:include page="inFile.jsp"></jsp:include>
</body>
</html>