<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>action태그 활용하기</title>
</head>
<body>
	<h2>액션태그 활용하기</h2>
	<p>jsp페이지에서 java코드를 html태그방식으로 작성할 수 있게 해주는 태그</p>
	<ul>
		<li>
			표준액션태그 : jsp에서 기본으로 제공하는 액션태그 
		</li>
		<li>
			커스텀액션태그(JSTL) : 별도의 라이브러리로 제공되는 태그 *외부에서 jar파일을 가져와 넣어줘야함.
		</li>
	</ul>
	<p>액션태그는 태그명앞에 prefix를 붙인다.</p>
	<h2>표준액션태그</h2>
	<p>jsp:include -> 다른 jsp페지지를 불러와 출력해주는 태그
	   jsp:param -> jsp페이지에 데이터 전달할때 사용 *key value형식으로 전달  
	   태그사용해보기
	</p>
	<h3>
		<a href="<%=request.getContextPath()%>/views/includeTest.jsp">include</a>
	</h3>
	


</body>
</html>








