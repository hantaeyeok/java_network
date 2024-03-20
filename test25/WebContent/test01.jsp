<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.ArrayList" %>
<%--1. 	각주 		:	각주(Comment)			: 해당 코드에 대한 설명부--%>
<%--2. 	<%@ %>  : 	디렉티브(Directive) 	: 현재 페이지에 필요한 설정이나 리소스 로딩page 디렉티브는 무조건 사용해야한다. --%>
<%--3. 	<%! %> 	: 	선언문(Declare)		: 익명의 클래스로서 현재 문서에서만 유효  --%>
<%--4.	<%  %>	:	자바명령문(Scriptlet)	: 해당 페이지에 자바 언어로 프로그래밍한 코드부--%>
<%--5.	<%=	%>	:	표현식(Expression)	: 해당 결과를 출력 또는 표현시 사용--%>
<%-- test01.jsp --%>
<%-- a hrep : 누구나 볼수 있어 계시판의 제목에다가 표시하는 것 
	get 방식은 누구나 볼수 있다. 기밀성x a태그
	post 방식은 통신하는 사람과 수신하는 사람만 알수 있다. 기말성 form전송
 --%>

<%!
	private String name;
	public String getName(){
	return this.name;
	}

	public void setName(String name){
	this.name = name;
	}
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%
	String title = "메인 페이지";
%>
<title><%=title %></title>
</head>
<body>
<%
	setName("한태역");
%>
<h2><%=getName() %>의 홈페이지</h2>
<hr>

</body>
</html>