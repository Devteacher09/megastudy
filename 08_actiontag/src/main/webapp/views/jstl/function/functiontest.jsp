<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>JSTL함수이용하기</h2>
	<c:set var="data" value="How Are You? I am fine"/>
	<p><c:out value="${data }"/></p>
	<p>${fn:toUpperCase(data) }</p>
	<p>${fn:replace(data,"fine","tried") }</p>
	<p>${fn:contains(data,"You")?"당신이있네":"당신이 없네" }</p>
</body>
</html>







