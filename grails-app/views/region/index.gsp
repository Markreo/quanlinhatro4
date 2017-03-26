
<%@ page import="com.quanlinhatro.Region" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'region.label', default: 'Region')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-region" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-region" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="name" title="${message(code: 'region.name.label', default: 'Name')}" />
					
						<g:sortableColumn property="address" title="${message(code: 'region.address.label', default: 'Address')}" />
					
						<th><g:message code="region.user.label" default="User" /></th>
					
						<g:sortableColumn property="dateCreated" title="${message(code: 'region.dateCreated.label', default: 'Date Created')}" />
					
						<g:sortableColumn property="lastUpdated" title="${message(code: 'region.lastUpdated.label', default: 'Last Updated')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${regionInstanceList}" status="i" var="regionInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${regionInstance.id}">${fieldValue(bean: regionInstance, field: "name")}</g:link></td>
					
						<td>${fieldValue(bean: regionInstance, field: "address")}</td>
					
						<td>${fieldValue(bean: regionInstance, field: "user")}</td>
					
						<td><g:formatDate date="${regionInstance.dateCreated}" /></td>
					
						<td><g:formatDate date="${regionInstance.lastUpdated}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${regionInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
