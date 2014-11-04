
<%@ page import="com.pasal.Expenditure" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'expenditure.label', default: 'Expenditure')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-expenditure" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-expenditure" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list expenditure">
			
				<g:if test="${expenditureInstance?.amount}">
				<li class="fieldcontain">
					<span id="amount-label" class="property-label"><g:message code="expenditure.amount.label" default="Amount" /></span>
					
						<span class="property-value" aria-labelledby="amount-label"><g:fieldValue bean="${expenditureInstance}" field="amount"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${expenditureInstance?.date}">
				<li class="fieldcontain">
					<span id="date-label" class="property-label"><g:message code="expenditure.date.label" default="Date" /></span>
					
						<span class="property-value" aria-labelledby="date-label"><g:formatDate date="${expenditureInstance?.date}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${expenditureInstance?.particulars}">
				<li class="fieldcontain">
					<span id="particulars-label" class="property-label"><g:message code="expenditure.particulars.label" default="Particulars" /></span>
					
						<span class="property-value" aria-labelledby="particulars-label"><g:fieldValue bean="${expenditureInstance}" field="particulars"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${expenditureInstance?.id}" />
					<g:link class="edit" action="edit" id="${expenditureInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
