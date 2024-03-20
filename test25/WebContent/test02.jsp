<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Get 방식 데이터 처리</title>
</head>
<body>
	<%--request : 서버에서 받은 데이터는 request // 요청 받은 내용이 들어오는 것--%>
	<%
		request.setCharacterEncoding("UTF-8");
		String name = request.getParameter("name");
		int age = Integer.parseInt(request.getParameter("age"));
		int point = Integer.parseInt(request.getParameter("point"));
		
		
	%>
	<h2>요청된 데이터</h2>
	<%
		String hak = "";
		if(point >= 90){
			hak = "수";
		}else if(point>=80){
			hak ="우";
		}else if(point>=70){
			hak ="미";
		}else if(point>=60){
			hak ="양";
		}else {
			hak ="가";
		}
	
	%>
	<ul>
		<li><strong>이름</strong>: <span><%=name %></span></li>
		<li><strong>나이</strong>: <span><%=age %></span></li>
		<li><strong>점수</strong>: <span><%=point %></span></li>
		<li><strong>학점</strong>: <span><%=hak %></span></li>
		
		
	</ul>
</body>
</html>