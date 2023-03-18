<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>requestData : ${request }</h3>
	<h3>sessionData : ${session }</h3>
	<h3>contextData : ${context }</h3>
	
	<h3>저장된 객체데이터 불러오기</h3>
	<p>객체로 저장된 데이터는 저장된 key값과 필드명으로 데이터를 불러올 수 있음</p>
	<p>${loginMember }</p>
	<p>${loginMember.userId }</p>
	<p>${loginMember.password }</p>
	
	
	<h3>다수의 객체 불러오기</h3>
	<p>${members }</p>
	<p>${members.get(0).userId }</p>
	<p>${members.get(1).userId }</p>
	
	<h3>같은 key값으로 저장된 데이터 호출하기</h3>
	<p>검색할 내장객체의 영역을 설정할 수 있다</p>
	<p>requestScope, sessionScope, appicationScope설정</p>
	<p>${sessionScope.session }</p>
	
	
	<h3>파라미터로 전송한 데이터 출력하기</h3>
	<p>
		param을 이용해서 전송된 parameter데이터를 이용할 수 있다.
		단일값 : param.name으로 가져옴 -> String
		다수값 : param.values로 가져옴 -> String[]
	</p>
	<p>단일값 : ${param.msg }</p>
	<p>다수값 : ${paramValues.hobby }</p>
	<p>다수값 : ${paramValues.hobby[0] }</p>
	<p>다수값 : ${paramValues.hobby[1] }</p>
	<p>다수값 : ${paramValues.hobby[2] }</p>
	
	
</body>
</html>




