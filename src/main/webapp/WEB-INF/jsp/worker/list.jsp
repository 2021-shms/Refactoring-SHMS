<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ include file="/WEB-INF/jsp/layout/top.jsp" %>
		<table class="table table-hover">
			<thead>
				<tr>
					<th>사원번호</th>
					<th>근로자이름</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${workerList}" var="worker">
					<c:if test="${worker.isDelete eq 'N'}">
						<tr onclick="location.href='/worker/${worker.empNumber}'">
							<td>
								${worker.empNumber}
							</td>
							<td>
								${worker.name}
							</td>
						</tr>
					</c:if>
				</c:forEach>
			</tbody>
		</table>
<%@ include file="/WEB-INF/jsp/layout/bottom.jsp" %>