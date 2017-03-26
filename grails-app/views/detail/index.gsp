
<%@ page import="com.quanlinhatro.Detail" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'detail.label', default: 'Detail')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-detail" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-detail" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="name" title="${message(code: 'detail.name.label', default: 'Name')}" />
					
						<th><g:message code="detail.lease.label" default="Lease" /></th>
					
						<g:sortableColumn property="value" title="${message(code: 'detail.value.label', default: 'Value')}" />
					
						<g:sortableColumn property="price" title="${message(code: 'detail.price.label', default: 'Price')}" />
					
						<g:sortableColumn property="dateCreated" title="${message(code: 'detail.dateCreated.label', default: 'Date Created')}" />
					
						<g:sortableColumn property="lastUpdated" title="${message(code: 'detail.lastUpdated.label', default: 'Last Updated')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${detailInstanceList}" status="i" var="detailInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${detailInstance.id}">${fieldValue(bean: detailInstance, field: "name")}</g:link></td>
					
						<td>${fieldValue(bean: detailInstance, field: "lease")}</td>
					
						<td>${fieldValue(bean: detailInstance, field: "value")}</td>
					
						<td>${fieldValue(bean: detailInstance, field: "price")}</td>
					
						<td><g:formatDate date="${detailInstance.dateCreated}" /></td>
					
						<td><g:formatDate date="${detailInstance.lastUpdated}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${detailInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
