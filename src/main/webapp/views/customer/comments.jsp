
<%@page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<%@taglib prefix="jstl"	uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="security" uri="http://www.springframework.org/security/tags"%>
<%@taglib prefix="display" uri="http://displaytag.sf.net"%>

<p><spring:message code="customer.comment.list" /></p>

<security:authorize access="hasRole('CUSTOMER')">
	<jstl:forEach var="comment" items="comments">
			<jstl:out value="${comment}" />
			<br /> 
	</jstl:forEach> 
	
	<!-- <jstl:if test="${application.status=='ACCEPTED'}">  -->
			
		<spring:url var="createCommentUrl" value="/comment/customer/edit.do?applicationId={appId}">
				<spring:param name="appId" value="${application.id}"/>
		</spring:url>
	
		<a href="${createCommentUrl}">
				<spring:message code="comments.create" />			
		</a>
	
	<!-- </jstl:if>	-->
	

</security:authorize>