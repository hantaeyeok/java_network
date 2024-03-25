<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>액션 태그</title>
<p>태그의 문법으로 자바처럼 구현할 수 잇는 것들</p>
<h1>액션태그(action tag)</h1>
</head>
<body>
<%@ include file="menu.jsp" %>
	<h2>useBean 액션 태그</h2>
<p>해당 클래스를 로딩하면서 객체(인스턴스)를 생성할 때 활용</p>
<p>Beans란? 클래스를 의미하며, Bean(인스턴스 객체)를 여러 개 만들 수 있다는 의미이다.</p>
<jsp:useBean id="mem" scope="request" class="org.kh.dto.Member"></jsp:useBean>
<!-- id가 인스턴스 이름 -->
<p>id : 인스턴스 명</p>
<p>scope : 인식범위 ( request, response, application, )</p>
<p>class : 클래스를 의미</p>
<p><strong>★특정 클래스를 로딩하면서 인스턴스를 생성하는 액션태그</strong></p>
<hr>
<%
	mem.setNo(1);
	mem.setId("hty");
	mem.setPw("1234");
	mem.setName("한태역");
%>
<hr>
<h2>forward 액션 태그</h2>
<p>객체, 기본변수, 데이터 값 등을 전송하는 액션태그</p>
<jsp:forward page="test11_result.jsp"></jsp:forward>
</body>
</html>
<!-- 
	dispatch : URL은 보낸 페이지로 표시되고, 페이지의 내용은 받은 페이지를 표시
	보내는 행위는 forward이고 forward로 인해 나타나는 현상을 dispatch
 -->