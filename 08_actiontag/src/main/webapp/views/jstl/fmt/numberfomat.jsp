<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>숫자패턴으로 출력하기</title>
</head>
<body>
	<h2>기본숫자표현하기</h2>
	<c:set var="numtest" value="123456012"/>
	<c:set var="numtest1" value="19883000"/>
	<c:set var="numtest2" value="1"/>
	<c:set var="numtest3" value="1234.567"/>	
	
	<p>기본숫자출력 : ${numtest }</p>
	<p>formatNumber태그 이용 : <fmt:formatNumber value="${numtest }"/></p>
	<h3>숫자 쉼표처리를 제어</h3>
	<p>groupingUsed속성 true/false</p>
	<p><fmt:formatNumber value="${numtest }" groupingUsed="true"/></p>
	<p><fmt:formatNumber value="${numtest }" groupingUsed="false"/></p>
	
	<h3>숫자를 화폐로 출력하기</h3>
	<p>
		type속성을 이용해서 처리할 수 있다.
		currency값을 대입하면 숫자를 화폐로 출력
	</p>
	<p><fmt:formatNumber type="currency" value="${numtest1 }"/>원</p>
	<h4>화폐표시커스터마이징</h4>
	<p>currencySymbol속성을 이용해서 처리</p>
	<p><fmt:formatNumber type="currency" currencySymbol="$" value="${numtest1 }"/>
	<fmt:setLocale value="fr_FR"/>
	<p><fmt:formatNumber type="currency" value="${numtest1 }"/></p>
	<fmt:setLocale value="ko_Kr"/>
	<p><fmt:formatNumber type="currency" value="${numtest1 }"/></p>
	<p>현재 로케일확인 ${pageContext.request.locale }</p>
	
	<h3>퍼센트 표시하기</h3>
	<p>
		type속성에 percent값을 대입
		value값이 0~1사이의 값만 가능 0% : 0 -> 100% : 1
	</p>
	<p><fmt:formatNumber value="${numtest2 }" type="percent"/></p>
	<p><fmt:formatNumber value="0.5" type="percent"/></p>
	<p><fmt:formatNumber value="0.25" type="percent"/></p>
	
	
	<h3>패턴으로 숫자를 표시하기</h3>
	<p>
		0 : 지정한 자리수에 수가 없으면 0을 표시하는 패턴
		# : 지정한 자리수에 수가 없으면 생략하는 패턴
		pattern속성을 이용함.
	</p>
	<h3>0 : ${numtest3 } -> <fmt:formatNumber value="${numtest3 }" pattern="000,000,000"/></h3>
	<h3># : ${numtest3 } -> <fmt:formatNumber value="${numtest3 }" pattern="###,###,###"/></h3>
	<h3>0 소수점 : ${numtest3 } -> <fmt:formatNumber value="${numtest3 }" pattern="000,000.000"/></h3>
	<h3># 소수점 : ${numtest3 } -> <fmt:formatNumber value="${numtest3 }" pattern="###,###.###"/></h3>
	<h3># 소수점 : ${numtest3 } -> <fmt:formatNumber value="1234.1111" pattern="###,###.#"/></h3>
	<h3>0,# 소수점 : ${numtest3 } -> <fmt:formatNumber value="1234.1" pattern="###,###.00##"/></h3>
	
	
	
	
	
</body>
</html>