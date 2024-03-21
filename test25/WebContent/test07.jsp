<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>웹의 객체 전달과 스코프(Scope) 알기</title>
</head>
<body>
<h2>웹의 객체 전달과 스코프(Scope) 알기</h2>
<%
	List<String> lst = new ArrayList<>();
	lst.add("이정희");
	lst.add("이원석");
	lst.add("이예린");
	lst.add("이연정");
	lst.add("이성하");
	request.setAttribute("lst", lst);
	
	Set<String> set = new HashSet<>();
	set.add("조대신");
	set.add("조우진");
	set.add("최태영");
	set.add("한태역");
	request.setAttribute("set", set);
	
	Map<Integer, String> map = new HashMap<>();
	map.put(1, "김동연");
	map.put(2, "김민식");
	map.put(3, "김민아");
	map.put(4, "김윤정");
	map.put(5, "김응원");
	map.put(6, "김필규");
	request.setAttribute("map", map);
	
	//데이터보낼때
	RequestDispatcher rd = request.getRequestDispatcher("test08.jsp");		//목적지를 지정 해야함
	rd.forward(request, response);					//데이터 전달	 url은 test07 
	response.sendRedirect("test08.jsp");		//페이지 이동이 아니라 데이터 이동이다. : url은 test07.jsp이지만, 화면의 내용은 test08.jsp로 출력됨
	//sendRedirect : url은 이동이 아니라 화면만 이동
	
	
%>
<h2>객체 데이터 전달하기</h2>

</body>
</html>