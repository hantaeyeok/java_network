<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %> 
<%@ page import="org.kh.dto.Member" %>   
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>      
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL(Java Standard Tag Library) FMT : 출력형식</title>
</head>
<body>
<%@ include file="menu.jsp" %>
<hr>
<h1>FMT(Format : 표시형식)</h1>
<c:set var="num" value="12345678.9876543"></c:set>
<c:set var="data" value="3,652,733"></c:set>
<c:set var="su1" value="0"></c:set>
<c:set var="su2" value="4"></c:set>
<c:set var="su3" value="-6500000"></c:set>
<c:set var="today" value="<%= new Date() %>"></c:set>
<br><hr><br>
<h3>01. 숫자 표시형식 변환문 fmt:parseNumber 	표시형식 변환</h3>
<c:out value="${num }"></c:out>
<p><fmt:parseNumber value="${num }" pattern="0,000" var="num2"/> </p>
<p>${num2 }</p>
<p><fmt:parseNumber value="${data }" pattern="0,000" var="num3"/> </p>
<p>${num3 }</p>
<p>1년은 ${num3/10000 }일 입니다.</p>
<hr>
<h2>02. 숫자 표시형식 변환문 fmt:formatNumber</h2>
<p>groupingUsed 속성 : 천단위 구분기호 사용여부</p>
<p><fmt:formatNumber value="${num }" groupingUsed="true"/> </p>
<p><fmt:formatNumber value="${su1 }" groupingUsed="true"/> </p>
<p><fmt:formatNumber value="${su3 }" groupingUsed="true"/> </p>
<br>
<p>pattern 속성 활용</p>
<p><fmt:formatNumber value="${num }" pattern="#,##0"/> </p>
<p><fmt:formatNumber value="${su1 }" pattern="#,##0"/> </p>
<p><fmt:formatNumber value="${su2 }" pattern="#,##0"/> </p>
<p><fmt:formatNumber value="${num }" pattern="\#,##0"/> </p>
<br>
<h3>type 속성 : percent</h3>
<p><fmt:formatNumber value="${num1 }" type="percent"/> </p>
<p><fmt:formatNumber value="${su2 }" type="percent"/> </p>
<p><fmt:formatNumber value="${su3 }" type="percent"/> </p>
<br>
<h3>type 속성 :currency</h3>
<p><fmt:formatNumber value="${num1 }" type="currency"/> </p>
<p><fmt:formatNumber value="${su2 }" type="currency"/> </p>
<p><fmt:formatNumber value="${su3 }" type="currency"/> </p>
<br>
<h2>03. 국가코드 언어설정 -setLocale</h2>
<h3>대한민국(ko_kr)</h3>
<fmt:setLocale value="ko_kr"/>
<p><fmt:formatNumber value="${num1 }" type="currency"/> </p>
<p><fmt:formatNumber value="${su2 }" type="currency"/> </p>
<p><fmt:formatNumber value="${su3 }" type="currency"/> </p>
<p><fmt:formatDate value="${today }" pattern="yyyy-MM-dd EEEE a hh:mm:ss"/> </p>
<br>
<h3>일본(ja_jp)</h3>
<fmt:setLocale value="ja_jp"/>
<p><fmt:formatNumber value="${num1 }" type="currency"/> </p>
<p><fmt:formatNumber value="${su2 }" type="currency"/> </p>
<p><fmt:formatNumber value="${su3 }" type="currency"/> </p>
<p><fmt:formatDate value="${today }" pattern="yyyy-MM-dd EEEE a hh:mm:ss"/> </p>
<br>
<h3>미국(en_us)</h3>
<fmt:setLocale value="en_us"/>
<p><fmt:formatNumber value="${num1 }" type="currency"/> </p>
<p><fmt:formatNumber value="${su2 }" type="currency"/> </p>
<p><fmt:formatNumber value="${su3 }" type="currency"/> </p>
<p><fmt:formatDate value="${today }" pattern="yyyy-MM-dd EEEE a hh:mm:ss"/> </p>
<br>
<h3>중국(zh_CN)</h3>
<fmt:setLocale value="zh_CN"/>
<p><fmt:formatNumber value="${num1 }" type="currency"/> </p>
<p><fmt:formatNumber value="${su2 }" type="currency"/> </p>
<p><fmt:formatNumber value="${su3 }" type="currency"/> </p>
<p><fmt:formatDate value="${today }" pattern="yyyy-MM-dd EEEE a hh:mm:ss"/> </p>
<br>
<h3>대만(zh_TW)</h3>
<fmt:setLocale value="zh_TW"/>
<p><fmt:formatNumber value="${num1 }" type="currency"/> </p>
<p><fmt:formatNumber value="${su2 }" type="currency"/> </p>
<p><fmt:formatNumber value="${su3 }" type="currency"/> </p>
<p><fmt:formatDate value="${today }" pattern="yyyy-MM-dd EEEE a hh:mm:ss"/> </p>
<br>
<h3>베트남(vi_VN)</h3>
<fmt:setLocale value="vi_VN"/>
<p><fmt:formatNumber value="${num1 }" type="currency"/> </p>
<p><fmt:formatNumber value="${su2 }" type="currency"/> </p>
<p><fmt:formatNumber value="${su3 }" type="currency"/> </p>
<p><fmt:formatDate value="${today }" pattern="yyyy-MM-dd EEEE a hh:mm:ss"/> </p>
<br>
<h3>말레이시아(ms_MY)</h3>
<fmt:setLocale value="ms_MY"/>
<p><fmt:formatNumber value="${num1 }" type="currency"/> </p>
<p><fmt:formatNumber value="${su2 }" type="currency"/> </p>
<p><fmt:formatNumber value="${su3 }" type="currency"/> </p>
<p><fmt:formatDate value="${today }" pattern="yyyy-MM-dd EEEE a hh:mm:ss"/> </p>
<br>
<h3>프랑스(fr_FR)</h3>
<fmt:setLocale value="fr_FR"/>
<p><fmt:formatNumber value="${num1 }" type="currency"/> </p>
<p><fmt:formatNumber value="${su2 }" type="currency"/> </p>
<p><fmt:formatNumber value="${su3 }" type="currency"/> </p>
<p><fmt:formatDate value="${today }" pattern="yyyy-MM-dd EEEE a hh:mm:ss"/> </p>
<br>
<h3>독일(de_DE)</h3>
<fmt:setLocale value="de_DE"/>
<p><fmt:formatNumber value="${num1 }" type="currency"/> </p>
<p><fmt:formatNumber value="${su2 }" type="currency"/> </p>
<p><fmt:formatNumber value="${su3 }" type="currency"/> </p>
<p><fmt:formatDate value="${today }" pattern="yyyy-MM-dd EEEE a hh:mm:ss"/> </p>
<br>
<hr>
<br>
<fmt:setLocale value="ko_kr"/>
<c:set var="date1" value="2024-03-25" ></c:set>
<c:set var="time1" value="19:26:29" ></c:set>
<c:set var="today2" value="<%=new Date() %>" ></c:set>
<br>
<h2>★04. 날짜 데이터 표시 형식 지정★ 문자열을 날짜/시간데이터로 변환 : parseDate</h2>
<fmt:parseDate value="${date1 }" pattern="yyyy-MM-dd" var="date2" ></fmt:parseDate>
<fmt:parseDate value="${time1 }" pattern="HH:mm:ss" var="time2"></fmt:parseDate>
<p>문자열 날짜  데이터로 변환 : ${date2} }</p>
<p>문자열 시간  데이터로 변환 : ${time2} }</p>
<br>
<h2>★05. 날짜/시간 표시형식을 지정 formatDate</h2>
<h3>type 속성 : both, date, time</h3>
<p>type : both -<fmt:formatDate value="${today2 }" type="both" ></fmt:formatDate></p>
<p>type : date -<fmt:formatDate value="${today2 }" type="date"></fmt:formatDate></p>
<p>type : time -<fmt:formatDate value="${today2 }" type="time"></fmt:formatDate></p>
<h3>dateStyle 속성 :full,long, medium, short </h3>
<h4>type date : date, dateStyle : full, long, medium, short</h4>
<p>dateStyle : full -<fmt:formatDate value="${today2 }" type="date" dateStyle="full"></fmt:formatDate></p>
<p>dateStyle : long -<fmt:formatDate value="${today2 }" type="date" dateStyle="long"></fmt:formatDate></p>
<p>dateStyle : medium -<fmt:formatDate value="${today2 }" type="date" dateStyle="medium"></fmt:formatDate></p>
<p>dateStyle : short -<fmt:formatDate value="${today2 }" type="date" dateStyle="short"></fmt:formatDate></p>
<br>
<h4>type time : date, dateStyle : full, long, medium, short</h4>
<p>dateStyle : full -<fmt:formatDate value="${today2 }" type="time" dateStyle="full"></fmt:formatDate></p>
<p>dateStyle : long -<fmt:formatDate value="${today2 }" type="time" dateStyle="long"></fmt:formatDate></p>
<p>dateStyle : medium -<fmt:formatDate value="${today2 }" type="time" dateStyle="medium"></fmt:formatDate></p>
<p>dateStyle : short -<fmt:formatDate value="${today2 }" type="time" dateStyle="short"></fmt:formatDate></p>
<br>
<h4>type both : date, dateStyle : full, long, medium, short</h4>
<p>dateStyle : full -<fmt:formatDate value="${today2 }" type="both" dateStyle="full"></fmt:formatDate></p>
<p>dateStyle : long -<fmt:formatDate value="${today2 }" type="both" dateStyle="long"></fmt:formatDate></p>
<p>dateStyle : medium -<fmt:formatDate value="${today2 }" type="both" dateStyle="medium"></fmt:formatDate></p>
<p>dateStyle : short -<fmt:formatDate value="${today2 }" type="both" dateStyle="short"></fmt:formatDate></p>
<br>
<hr>
<br>
<h3>표시형식 코드</h3>
<!-- y:년도, M:월, d:일, D:현재 년도 1월1일부터 몇일째 인지 , E:요일 
	a:오전/오후, h:12시간, H:24시간, m:분, s:초, S:밀리초
-->
<h4>pattern 속성</h4>
<p>날짜 표시형식 코드를 지정하여 출력</p>
<p><fmt:formatDate value="${today2 }" pattern="yyyy년 MM월 dd일 EEEE a hh:mm:ss" /> </p>
<p><fmt:formatDate value="${today2 }" pattern="yy/M/d E H:m:s" /> </p>
<br>
<hr>
<br>
<h2>06. timeZone(시간대) 태그 </h2>
<p>setLocale은 지정된 다음부터 변경 전까지 계속 변경되지만, 
timeZone은 해당 하위 요소에만 적용</p>
<h3>서울</h3><!-- timezone은 그 해당하는 태그만 반영 일회성임 -->
<fmt:timeZone value="Asia/Seoul"> <fmt:formatDate value="${today2 }" pattern="yyyy/MM/dd EEEE a hh:mm:ss"/> </fmt:timeZone>
<h3>도쿄(일본)</h3><!-- timezone은 그 해당하는 태그만 반영 일회성임 -->
<fmt:timeZone value="Asia/Tokyo"> <fmt:formatDate value="${today2 }" pattern="yyyy/MM/dd EEEE a hh:mm:ss"/> </fmt:timeZone>
<h3>뉴욕(미국)</h3><!-- timezone은 그 해당하는 태그만 반영 일회성임 -->
<fmt:timeZone value="America/New_York"> <fmt:formatDate value="${today2 }" pattern="yyyy/MM/dd EEEE a hh:mm:ss"/> </fmt:timeZone>
<h3>런던(영국)</h3><!-- timezone은 그 해당하는 태그만 반영 일회성임 -->
<fmt:timeZone value="Europe/London"> <fmt:formatDate value="${today2 }" pattern="yyyy/MM/dd EEEE a hh:mm:ss"/> </fmt:timeZone>
<h3>파리(프랑스)</h3><!-- timezone은 그 해당하는 태그만 반영 일회성임 -->
<fmt:timeZone value="Europe/Paris"> <fmt:formatDate value="${today2 }" pattern="yyyy/MM/dd EEEE a hh:mm:ss"/> </fmt:timeZone>
<h3>세계표준시(UTC)</h3><!-- timezone은 그 해당하는 태그만 반영 일회성임 -->
<fmt:timeZone value="UTC"> <fmt:formatDate value="${today2 }" pattern="yyyy/MM/dd EEEE a hh:mm:ss"/> </fmt:timeZone>
<br>
<h2>07. setTimeZone(시간대) 태그 </h2>
<p>setLocale은 해당 화폐단위와 언어가 모두 변경되지만,
 setTimeZone은 해당 지역의 시간대로 날짜/시간만 적용</p>
 <h3>서울(대한민국)</h3>
 <p>
 	<fmt:setTimeZone value="Asia/Seoul"/>
 	<fmt:formatDate value="${today2 }" pattern="yyyy/MM/dd EEEE a hh:mm:ss"/>
 </p>
 <br>
  <h3>도쿄(일본)</h3>
 <p>
 	<fmt:setTimeZone value="Asia/Tokyo"/>
 	<fmt:formatDate value="${today2 }" pattern="yyyy/MM/dd EEEE a hh:mm:ss"/>
 </p>
  <br>
   <h3>뉴욕(미국)</h3>
 <p>
 	<fmt:setTimeZone value="America/New_York"/>
 	<fmt:formatDate value="${today2 }" pattern="yyyy/MM/dd EEEE a hh:mm:ss"/>
 </p>
  <br>
    <h3>런던(영국)</h3>
 <p>
 	<fmt:setTimeZone value="Europe/London"/>
 	<fmt:formatDate value="${today2 }" pattern="yyyy/MM/dd EEEE a hh:mm:ss"/>
 </p>
  <br>
      <h3>파리(프랑스)</h3>
 <p>
 	<fmt:setTimeZone value="Europe/Paris"/>
 	<fmt:formatDate value="${today2 }" pattern="yyyy/MM/dd EEEE a hh:mm:ss"/>
 </p>
  <br>
      <h3>세계표준시(UTC)</h3>
 <p>
 	<fmt:setTimeZone value="UTC"/>
 	<fmt:formatDate value="${today2 }" pattern="yyyy/MM/dd EEEE a hh:mm:ss"/>
 </p>
	 <fmt:setTimeZone value="Asia/Seoul"/>
  <br><hr><br>
  <p style="font-size:32px;color:red"><strong>★DB(datatime)-> java(String) ->Webpage(parseDate-> formatDate)</strong></p>
 
</body>
</html>