
<%@ page import="com.pasal.Bill" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'bill.label', default: 'Bill')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-bill" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-bill" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="billDate" title="${message(code: 'bill.billDate.label', default: 'Bill Date')}" />
					
						<g:sortableColumn property="cash" title="${message(code: 'bill.cash.label', default: 'Cash')}" />
					
						<g:sortableColumn property="particulars" title="${message(code: 'bill.particulars.label', default: 'Particulars')}" />
					
						<g:sortableColumn property="quantity" title="${message(code: 'bill.quantity.label', default: 'Quantity')}" />
					
						<g:sortableColumn property="rate" title="${message(code: 'bill.rate.label', default: 'Rate')}" />
					
						<g:sortableColumn property="total" title="${message(code: 'bill.total.label', default: 'Total')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${billInstanceList}" status="i" var="billInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${billInstance.id}">${fieldValue(bean: billInstance, field: "billDate")}</g:link></td>
					
						<td>${fieldValue(bean: billInstance, field: "cash")}</td>
					
						<td>${fieldValue(bean: billInstance, field: "particulars")}</td>
					
						<td>${fieldValue(bean: billInstance, field: "quantity")}</td>
					
						<td>${fieldValue(bean: billInstance, field: "rate")}</td>
					
						<td>${fieldValue(bean: billInstance, field: "total")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${billInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
