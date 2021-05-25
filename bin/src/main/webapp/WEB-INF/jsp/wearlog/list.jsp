<<<<<<< HEAD
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		wearlog_list <br>
		<c:forEach items="${wearLogList}" var="wearLog">
			<c:forEach items="${workerList}" var="worker">
				<c:if test="${wearLog.empNumber eq worker.empNumber}">
					<label>${worker.name}</label>
					<label>${worker.phoneNumber}</label>
				</c:if>
			</c:forEach>
			<label>${wearLog.code}</label>
			<label>${wearLog.time}</label>
			<label>${wearLog.isWear}</label>
			<label>${wearLog.latitude}</label>
			<label>${wearLog.longitude}</label>
			<br>
		</c:forEach>
	</body>
=======
<<<<<<< HEAD
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		wearlog_list
		<c:out value="${wearLogList}" />
	</body>
=======
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		wearlog_list
		<c:out value="${wearLogList}" />
	</body>
>>>>>>> branch 'master' of https://github.com/2021-shms/system.git
>>>>>>> branch 'master' of https://github.com/2021-shms/system.git
</html>