
<%@ page import="com.quanlinhatro.Use" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'use.label', default: 'Use')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-use" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-use" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="unit" title="${message(code: 'use.unit.label', default: 'Unit')}" />
					
						<g:sortableColumn property="currentValue" title="${message(code: 'use.currentValue.label', default: 'Current Value')}" />
					
						<g:sortableColumn property="currentPrice" title="${message(code: 'use.currentPrice.label', default: 'Current Price')}" />
					
						<g:sortableColumn property="dateCreated" title="${message(code: 'use.dateCreated.label', default: 'Date Created')}" />
					
						<g:sortableColumn property="isTIENDIEN" title="${message(code: 'use.isTIENDIEN.label', default: 'Is TIENDIEN')}" />
					
						<g:sortableColumn property="isTIENNUOC" title="${message(code: 'use.isTIENNUOC.label', default: 'Is TIENNUOC')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${useInstanceList}" status="i" var="useInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${useInstance.id}">${fieldValue(bean: useInstance, field: "unit")}</g:link></td>
					
						<td>${fieldValue(bean: useInstance, field: "currentValue")}</td>
					
						<td>${fieldValue(bean: useInstance, field: "currentPrice")}</td>
					
						<td><g:formatDate date="${useInstance.dateCreated}" /></td>
					
						<td><g:formatBoolean boolean="${useInstance.isTIENDIEN}" /></td>
					
						<td><g:formatBoolean boolean="${useInstance.isTIENNUOC}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${useInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
