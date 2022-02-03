<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" session="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html lang="ko">
<head>
	<title>Home</title>
</head>
<body>
<h1>
	Hello world!  
</h1>

<P>  The time on the server is ${serverTime}. </P>

<h2>User 목록</h2> 
<table style="border:1px solid #ccc"> 
	<caption>Test User List</caption>
	<thead> 
		<tr> 
			<th scope="col">ID</th> 
			<th scope="col">NAME</th> 
			<th scope="col">GENDER</th> 
			<th scope="col">CITY</th> 
		</tr> 
	</thead> 
	<tbody> 
		<c:choose> 
			<c:when test="${fn:length(userList) > 0}"> 
				<c:forEach items="${userList}" var="row"> 
					<tr> 
						<td>${row.ID}</td> 
						<td>${row.NAME}</td> 
						<td>${row.GENDER}</td> 
						<td>${row.CITY}</td> 
					</tr> 
				</c:forEach> 
			</c:when> 
			<c:otherwise> 
				<tr> 
					<td colspan="4">조회된 결과가 없습니다.</td> 
				</tr> 
			</c:otherwise> 
		</c:choose> 
	</tbody> 
</table>


</body>
</html>
