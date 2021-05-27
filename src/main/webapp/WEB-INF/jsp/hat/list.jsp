<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="/WEB-INF/jsp/layout/top.jsp" %>
		<button type="button" class="btn btn-primary mb-2" onclick="location.href='/gateway'">게이트웨이</button>
		<button type="button" class="btn btn-primary mb-2" onclick="location.href='/hat'">안전모</button>
		
		<table class="table table-hover">
			<thead>
				<tr>
					<th>일련번호</th>
					<th>등록일</th>
					<th></th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${hatList}" var="hat">
					<c:if test="${hat.isDelete eq 'N'}">
						<tr>
							<form action="/hat" method="post">
								<input type="hidden" name="_method" value="delete" />
								<input type="hidden" name="code" value="${hat.code}" />
								<input type="hidden" name="isDelete" value="Y" />
								<td>
									<label>${hat.code}</label>
								</td>
								<td>
									<fmt:parseDate value="${hat.registDate}" pattern="yyyy-MM-dd" var="registDate" type="date"/>
									<fmt:formatDate pattern="yyyy년 MM월 dd일" value="${registDate}"/>
								</td>
								<td>
									<input type="submit" class="btn btn-secondary mb-2" value="삭제" /> <br>
								</td>
							</form>
						</tr>
					</c:if>
				</c:forEach>
			</tbody>
		</table>
		<form action="/hat/form" method="get">
			<input type="submit" class="btn btn-primary mb-2" value="등록" />
		</form>
<%@ include file="/WEB-INF/jsp/layout/bottom.jsp" %>