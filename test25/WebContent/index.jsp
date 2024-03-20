<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
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
<% String title ="메인 페이지"; %>
<title><%=title %></title>
</head>
<body>
	<h2>메인페이지</h2>
	<hr>
	<nav>
		<ul>
			<li><a href = "test01.jsp"> JSP 페이지의 기본 구성요소</a></li>
			<li><a href = "test02.jsp?name='한태역'&age=27&point=80">GET방식 데이터 전송</a></li>
			<li><a href="test03.jsp">POST 데이터 전송</a></li>
			<li></li>
		</ul>
	</nav>

</body>
</html>