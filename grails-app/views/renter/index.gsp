
<%@ page import="com.quanlinhatro.Renter" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'renter.label', default: 'Renter')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-renter" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-renter" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="firstName" title="${message(code: 'renter.firstName.label', default: 'First Name')}" />
					
						<g:sortableColumn property="lastName" title="${message(code: 'renter.lastName.label', default: 'Last Name')}" />
					
						<g:sortableColumn property="sex" title="${message(code: 'renter.sex.label', default: 'Sex')}" />
					
						<g:sortableColumn property="phone" title="${message(code: 'renter.phone.label', default: 'Phone')}" />
					
						<th><g:message code="renter.region.label" default="Region" /></th>
					
						<g:sortableColumn property="dateCreated" title="${message(code: 'renter.dateCreated.label', default: 'Date Created')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${renterInstanceList}" status="i" var="renterInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${renterInstance.id}">${fieldValue(bean: renterInstance, field: "firstName")}</g:link></td>
					
						<td>${fieldValue(bean: renterInstance, field: "lastName")}</td>
					
						<td>${fieldValue(bean: renterInstance, field: "sex")}</td>
					
						<td>${fieldValue(bean: renterInstance, field: "phone")}</td>
					
						<td>${fieldValue(bean: renterInstance, field: "region")}</td>
					
						<td><g:formatDate date="${renterInstance.dateCreated}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${renterInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
