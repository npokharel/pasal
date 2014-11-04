
<%@ page import="com.pasal.Bill" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'bill.label', default: 'Bill')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-bill" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-bill" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list bill">
			
				<g:if test="${billInstance?.billDate}">
				<li class="fieldcontain">
					<span id="billDate-label" class="property-label"><g:message code="bill.billDate.label" default="Bill Date" /></span>
					
						<span class="property-value" aria-labelledby="billDate-label"><g:formatDate date="${billInstance?.billDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${billInstance?.cash}">
				<li class="fieldcontain">
					<span id="cash-label" class="property-label"><g:message code="bill.cash.label" default="Cash" /></span>
					
						<span class="property-value" aria-labelledby="cash-label"><g:fieldValue bean="${billInstance}" field="cash"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${billInstance?.particulars}">
				<li class="fieldcontain">
					<span id="particulars-label" class="property-label"><g:message code="bill.particulars.label" default="Particulars" /></span>
					
						<span class="property-value" aria-labelledby="particulars-label"><g:fieldValue bean="${billInstance}" field="particulars"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${billInstance?.quantity}">
				<li class="fieldcontain">
					<span id="quantity-label" class="property-label"><g:message code="bill.quantity.label" default="Quantity" /></span>
					
						<span class="property-value" aria-labelledby="quantity-label"><g:fieldValue bean="${billInstance}" field="quantity"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${billInstance?.rate}">
				<li class="fieldcontain">
					<span id="rate-label" class="property-label"><g:message code="bill.rate.label" default="Rate" /></span>
					
						<span class="property-value" aria-labelledby="rate-label"><g:fieldValue bean="${billInstance}" field="rate"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${billInstance?.total}">
				<li class="fieldcontain">
					<span id="total-label" class="property-label"><g:message code="bill.total.label" default="Total" /></span>
					
						<span class="property-value" aria-labelledby="total-label"><g:fieldValue bean="${billInstance}" field="total"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${billInstance?.userName}">
				<li class="fieldcontain">
					<span id="userName-label" class="property-label"><g:message code="bill.userName.label" default="User Name" /></span>
					
						<span class="property-value" aria-labelledby="userName-label"><g:fieldValue bean="${billInstance}" field="userName"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${billInstance?.id}" />
					<g:link class="edit" action="edit" id="${billInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
