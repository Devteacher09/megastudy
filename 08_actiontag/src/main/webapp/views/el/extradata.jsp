<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>cookie데이터 가져오기</h2>
	<p>${cookie }</p>
	<p>${cookie.cValue }</p>
	<p>${cookie.cValue.name }</p>
	<p>${cookie.cValue.value }</p>
	<p>${cookie.aValue }</p>
	<p>${cookie.aValue==null }</p>
	<p>${cookie.aValue.name }</p>
	
	<h3>header의 정보가져오기</h3>
	<p>${header}</p>
	<p>${header['user-agent'] }</p>
	<p>${header['referer'] }</p>
	
</body>
</html>




