<%@ page session="true"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:catch var="exception">${sessionScope.userId}</c:catch>
<c:set var="criteria" value="${sessionScope.userId}" />
<c:choose>
	<c:when test="${empty pageContext.session || not empty exception || empty criteria}">
		<c:redirect url="LogoutServlet" />
	</c:when>
	<c:otherwise>
		<c:redirect url="AcademicMain" />
	</c:otherwise>
</c:choose>