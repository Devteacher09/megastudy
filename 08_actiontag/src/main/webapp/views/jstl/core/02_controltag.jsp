<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List,com.el.vo.Member" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>제어태그 이용하기</title>
</head>
<body>
	<h3>JSTL의 제어문태그 이용하기</h3>
	<h4>조건문이용하기</h4>
	<p>c:if, c:choose태그가 있음</p>
	<p>c:if태그</p>
	<p>자바의 if문를 사용하는것과 동일</p>
	<p>c:if test="조건식(true/false)->el표현식사용" var="조건식결과저장변수명"</p>
	<c:set var="su" value="100"/>
	<c:set var="su1" value="200"/>
	<c:if test="${su<su1 }">
		<p>${su }는 ${su1 }보다 작다</p>
		<c:if test="${su<150 }">
			<p>${su }는 150보다도 작다</p>
		</c:if>
	</c:if>
	
	<%
		List<String> names=List.of("유병승","오윤재","이동명","한호현");
		request.setAttribute("names",names);
	%>
	<c:if test="${empty names }" var="result">
		<h4>저장된 이름이 없습니다</h4>
	</c:if>
	<%-- <c:if test="${not empty names }"> --%>
	<c:if test="${!result }">
		<h4>저장된 이름은 ${names.size() }개 입니다</h4>
	</c:if>
	<p>empty names의 결과는 ${result }</p>
	
	<h3>c:choose태그 이용하기</h3>
	<p>작성법은 switch문과 비슷, if else if else if else문과 비슷</p>
	<p>
		c:choose태그의 자식으로 c:when태그를 사용
		c:when태그 test속성을 사용
	</p>
	<c:choose>
		<c:when test="${su<50 }">
			<h4>${su }는 50보다 작다</h4>
		</c:when>
		<c:when test="${su<70 }">
			<h4>${su }는 70보다 작다</h4>
		</c:when>
		<c:when test="${su<100 }">
			<h4>${su }는 110보다 작다</h4>
		</c:when>
		<c:otherwise>
			<h4>아무것도 해당안돼!!!</h4>
		</c:otherwise>
	</c:choose>
	
	
	<h3>반복문 활용하기</h3>
	<p>
		1. 기본반복문활용 : 1~10까지출력, 원하는 횟수만큼 반복
		2. 리스트에 저장된 데이터를 순회할때
	</p>
	<h4>c:forEach태그를 이용</h4>
	<ul>
		c:forEach속성
		<li>
			begin : 초기값(시작값)
		</li>
		<li>
			end : 종료값
		</li>
		<li>
			step : 증감연산
		</li>
		<li>
			var : 증감되는 값 또는 리스트나 배열에 가져오는 값을 저장하는 변수명
		</li>
		<li>
			items : 순회할대상이 되는 리스트, 배열
		</li>
		<li>
			varStatus : 반복문에 대한 정보를 저장하는 객체(index번호, 반복횟수, 첫번째,마지막번째에 대한 정보)
		</li>
	</ul>
	<h2>기본 c:forEach태그 활용</h2>
	<p>1~10까지 출력하기</p>
	<ul>
		<c:forEach var="i" begin="1" end="10" step="1">
			<li>${i }</li>
		</c:forEach>
	</ul>
	<c:forEach var="i" begin="1" end="6" step="1">
		<h${i }>이제 점심먹자구요!</h${i }>
	</c:forEach>
	<%
	List<Member> list=List.of(
			Member.builder().userId("admin").password("1234").userName("관리자")
			.age(40).weight(65.5).build(),
			Member.builder().userId("user01").password("1111").userName("유저01")
			.age(11).weight(70.5).build(),
			Member.builder().userId("user02").password("2222").userName("유저02")
			.age(33).weight(55.5).build()
			);
	request.setAttribute("members",list);
	%>
	<c:forEach var="m" items="${members }">
		<h3>${m }</h3>
	</c:forEach>
	<h3>회원정보</h3>
	<table>
		<tr>
			<th>번호</th>
			<th>아이디</th>
			<th>패스워드</th>
			<th>이름</th>
			<th>나이</th>
			<th>몸무게</th>
		</tr>
		<c:forEach var="m" items="${members }" varStatus="vs">
			<%-- <c:if test="${m.age>20 }"> --%>
				<tr>
					<td><c:out value="${vs.count }${vs.index }${vs.first }${vs.last }"/></td>
					<td><c:out value="${m.userId }"/></td>
					<td><c:out value="${m.password }"/></td>
					<td><c:out value="${m.userName }"/></td>
					<td><c:out value="${m.age }"/></td>
					<td><c:out value="${m.weight }"/></td>
				</tr>
			<%-- </c:if> --%>
		</c:forEach>
	</table>
	
	<h4>c:forTokens태그 이용하기</h4>
	<ul>속성
		<li>var : 값을 저장하는 변수</li>
		<li>items : 특정구분자로 구분될 수 있는 문자열</li>
		<li>delims : 특정구분자 선택</li>		
	</ul>
	<c:set var="hobby" value="코딩,운동,여행,영화"/>
	<c:forTokens var="h" items="${hobby }" delims=",">
		<p><c:out value="${h }"/></p>
	</c:forTokens>
	
	<h4>그외 태그들</h4>
	<h4>c:import</h4>
	<p>다른 jsp페이지를 저장하고 불러와 출력하는 태그</p>
	<c:import var="content" url="/views/includeTest.jsp"/>
	<div>
		${content }
	</div>
	
	<h4>c:catch태그</h4>
	<p>에러발생시 에러를 처리해버리는 태그</p>
	<%
		String name=null;
		
	%>
	<p>
		<c:catch var="e">
			<%=name.length() %>
		</c:catch>
	</p>
	<c:out value="${e }"/>
	
	
</body>
</html>









