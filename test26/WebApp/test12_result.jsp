<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="org.kh.dto.Member" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>forward2 - 데이터를 받는 곳</title>
</head>
<body>
<div>
	<h2>memberObj-Object</h2>
	<ul>
		<li>번호 : ${memberObj.no }</li>
		<li>아이디 : ${memberObj.id }</li>
		<li>패스워드 : ${memberObj.pw }</li>
		<li>이름 : ${memberObj.name }</li>
	</ul>
	<hr>
	<h2>strObj-String</h2>
	<ul>
		<li>문자열 : ${strObj }</li>
	</ul>
	<h2>intObj-Integer</h2>
	<ul>
		<li>Integer : ${intObj }</li>
	</ul>
	<h2>Parameter-num1,num2</h2>
	<ul>
		<li>파라미터1 : ${param.num1 }</li>
		<li>파라미터2 : ${param.num2 }</li>
	</ul>
	<h2>Parameter2-num1,num2</h2>
	<ul>
		<li>파라미터1 : ${param['num1'] }</li>
		<li>파라미터2 : ${param['num2'] }</li>
	</ul>
</div>

</body>
</html>