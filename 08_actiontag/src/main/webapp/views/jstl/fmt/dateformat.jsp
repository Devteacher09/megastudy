<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>  
<%@ page import="java.util.Date" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>날짜 데이터 처리하는 태그</title>
</head>
<body>
	<h2>fmt: 태그는 날짜와 숫자를 원하는패턴대로 출력해주는 기능을 하는 태그</h2>
	<p>
		1. formatNumeber : 숫자형 데이터를 금액표시(쉼표), 퍼센트표시, 소수점표시를 설정 
		2. formatDate : 날짜형데이터를 원하는 형태로 출력하게 해주는 태그
	</p>
	<h2>날짜데이터 처리하기</h2>
	<c:set var="today" value="<%=new Date() %>"/>
	<c:out value="${today }"/>
	<p>
		fmt:formatDate태그 속성
		type : 출력될 정보설정(날짜, 시간, 둘다)
			date : 날짜만 출력 년, 월, 일
			time : 시간만 출력 시, 분, 초
			both : 날짜와 시간을 출력
		dateStyle : 날짜를 출력할 방법을 설정
			default, short, long, full
		timStyle : 시간을 출력할 방법을 설정
		    medium, short, long, full
		pattern : 출력할 방식을 정해서 출력
		value : 출력된 날짜를 설정
	</p>
	<h4>date : <fmt:formatDate value="${today }" type="date"/></h4>
	<h4>time : <fmt:formatDate value="${today }" type="time"/></h4>
	<h4>both : <fmt:formatDate value="${today }" type="both"/></h4>
	<h3>기본 style적용해서 출력하기</h3>
	<h4>dateStyle</h4>
	<h4>default : <fmt:formatDate value="${today }" type="date" dateStyle="default"/></h4>
	<h4>short : <fmt:formatDate value="${today }" type="date" dateStyle="short"/></h4>
	<h4>long : <fmt:formatDate value="${today }" type="date" dateStyle="long"/></h4>
	<h4>full : <fmt:formatDate value="${today }" type="date" dateStyle="full"/></h4>
	<h4>timeStyle</h4>
	<h4>medium : <fmt:formatDate value="${today }" type="time" timeStyle="medium"/></h4>
	<h4>short : <fmt:formatDate value="${today }" type="time" timeStyle="short"/></h4>
	<h4>long : <fmt:formatDate value="${today }" type="time" timeStyle="long"/></h4>
	<h4>full : <fmt:formatDate value="${today }" type="time" timeStyle="full"/></h4>
	<h4>모두 스타일 적용</h4>
	<h4>
		<fmt:formatDate value="${today}" type="both" dateStyle="full" timeStyle="full"/>
	</h4>
	
	<h3>원하는 패턴대로 날짜 출력하기</h3>
	<p>
		pattern속성을 이용
		y(년), M(월), d(일), h(시), m(분) s(초)
	</p>
	<h4><fmt:formatDate value="${today }" type="both" pattern="yy/MM/dd hh:mm:ss"/></h4>
	<h4><fmt:formatDate value="${today }" type="both" pattern="yyyy-MM-dd (E) hh:mm:ss"/></h4>
	
	<h3>기준시간설정하기</h3>
	<p>
		fmt:timeZone태그 이용
			value속성에 기준시간 -> GMT
	</p>
	<p>
		<fmt:timeZone value="GMT">
			<fmt:formatDate value="${today }" type="time"
			timeStyle="full"/>
		</fmt:timeZone>
		<fmt:timeZone value="GMT+9">
			<fmt:formatDate value="${today }" type="time"
			timeStyle="full"/>
		</fmt:timeZone>
	</p>
	
	
</body>
</html>





