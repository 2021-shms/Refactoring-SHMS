<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="/WEB-INF/jsp/layout/top.jsp" %>
		manager_regist <br>
		<form action="/manager" method="post">
			사원번호 : <input type="text" name="empNumber" /> <br>
			비밀번호 : <input type="text" name="password" /> <br>
			비밀번호 확인 : <input type="text" /> <br>
			이름 : <input type="text" name="name" /> <br>
			연락처 : <input type="text" name="phoneNumber" /> <br>
			<input type="submit" value="등록"	 />		
		</form>
<%@ include file="/WEB-INF/jsp/layout/bottom.jsp" %>