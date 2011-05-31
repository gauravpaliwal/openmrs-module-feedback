<%@ include file="/WEB-INF/template/include.jsp" %>

<openmrs:require privilege="Add Hello World Response" otherwise="/login.htm" redirect="/module/feedback/addResponse.form" />
	
<%@ include file="/WEB-INF/template/header.jsp" %>

<br/>

<form method="post">

	<spring:message code="feedback.addSeverity"/>: 
	<input type="text" name="severity" value="" />
	
	<br/><br/>
	
	<input type="submit" value="<spring:message code="general.save" />" />

</form>

<h3><spring:message code="feedback.severities"/></h3>
<table border="0">
    <tr>
        <td width="100" ><h4>Index</h4></td>
        <td width="100"><h4>Severity Level</h4></td>
    </tr>
<c:forEach items="${severities}" var="severityObj">
    <tr>
        <td>${severityObj.feedbackSeverityId} </td>
        <td>${severityObj.severity} </td>
    </tr>

</c:forEach>
</table> 
<br/>

<%@ include file="/WEB-INF/template/footer.jsp" %>