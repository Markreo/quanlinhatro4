
<%@ page import="com.quanlinhatro.Room" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'room.label', default: 'Room')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-room" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-room" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list room">
			
				<g:if test="${roomInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="room.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${roomInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${roomInstance?.status}">
				<li class="fieldcontain">
					<span id="status-label" class="property-label"><g:message code="room.status.label" default="Status" /></span>
					
						<span class="property-value" aria-labelledby="status-label"><g:fieldValue bean="${roomInstance}" field="status"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${roomInstance?.region}">
				<li class="fieldcontain">
					<span id="region-label" class="property-label"><g:message code="room.region.label" default="Region" /></span>
					
						<span class="property-value" aria-labelledby="region-label"><g:link controller="region" action="show" id="${roomInstance?.region?.id}">${roomInstance?.region?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${roomInstance?.amount}">
				<li class="fieldcontain">
					<span id="amount-label" class="property-label"><g:message code="room.amount.label" default="Amount" /></span>
					
						<span class="property-value" aria-labelledby="amount-label"><g:fieldValue bean="${roomInstance}" field="amount"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${roomInstance?.price}">
				<li class="fieldcontain">
					<span id="price-label" class="property-label"><g:message code="room.price.label" default="Price" /></span>
					
						<span class="property-value" aria-labelledby="price-label"><g:fieldValue bean="${roomInstance}" field="price"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${roomInstance?.maxRenter}">
				<li class="fieldcontain">
					<span id="maxRenter-label" class="property-label"><g:message code="room.maxRenter.label" default="Max Renter" /></span>
					
						<span class="property-value" aria-labelledby="maxRenter-label"><g:fieldValue bean="${roomInstance}" field="maxRenter"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${roomInstance?.dueDate}">
				<li class="fieldcontain">
					<span id="dueDate-label" class="property-label"><g:message code="room.dueDate.label" default="Due Date" /></span>
					
						<span class="property-value" aria-labelledby="dueDate-label"><g:fieldValue bean="${roomInstance}" field="dueDate"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${roomInstance?.dateCreated}">
				<li class="fieldcontain">
					<span id="dateCreated-label" class="property-label"><g:message code="room.dateCreated.label" default="Date Created" /></span>
					
						<span class="property-value" aria-labelledby="dateCreated-label"><g:formatDate date="${roomInstance?.dateCreated}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${roomInstance?.lastUpdated}">
				<li class="fieldcontain">
					<span id="lastUpdated-label" class="property-label"><g:message code="room.lastUpdated.label" default="Last Updated" /></span>
					
						<span class="property-value" aria-labelledby="lastUpdated-label"><g:formatDate date="${roomInstance?.lastUpdated}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${roomInstance?.lease}">
				<li class="fieldcontain">
					<span id="lease-label" class="property-label"><g:message code="room.lease.label" default="Lease" /></span>
					
						<g:each in="${roomInstance.lease}" var="l">
						<span class="property-value" aria-labelledby="lease-label"><g:link controller="lease" action="show" id="${l.id}">${l?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${roomInstance?.renter}">
				<li class="fieldcontain">
					<span id="renter-label" class="property-label"><g:message code="room.renter.label" default="Renter" /></span>
					
						<g:each in="${roomInstance.renter}" var="r">
						<span class="property-value" aria-labelledby="renter-label"><g:link controller="renter" action="show" id="${r.id}">${r?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${roomInstance?.use}">
				<li class="fieldcontain">
					<span id="use-label" class="property-label"><g:message code="room.use.label" default="Use" /></span>
					
						<g:each in="${roomInstance.use}" var="u">
						<span class="property-value" aria-labelledby="use-label"><g:link controller="use" action="show" id="${u.id}">${u?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:roomInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${roomInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
