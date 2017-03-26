
<%@ page import="com.quanlinhatro.Region" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'region.label', default: 'Region')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-region" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-region" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list region">
			
				<g:if test="${regionInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="region.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${regionInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${regionInstance?.address}">
				<li class="fieldcontain">
					<span id="address-label" class="property-label"><g:message code="region.address.label" default="Address" /></span>
					
						<span class="property-value" aria-labelledby="address-label"><g:fieldValue bean="${regionInstance}" field="address"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${regionInstance?.user}">
				<li class="fieldcontain">
					<span id="user-label" class="property-label"><g:message code="region.user.label" default="User" /></span>
					
						<span class="property-value" aria-labelledby="user-label"><g:link controller="user" action="show" id="${regionInstance?.user?.id}">${regionInstance?.user?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${regionInstance?.room}">
				<li class="fieldcontain">
					<span id="room-label" class="property-label"><g:message code="region.room.label" default="Room" /></span>
					
						<g:each in="${regionInstance.room}" var="r">
						<span class="property-value" aria-labelledby="room-label"><g:link controller="room" action="show" id="${r.id}">${r?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${regionInstance?.dateCreated}">
				<li class="fieldcontain">
					<span id="dateCreated-label" class="property-label"><g:message code="region.dateCreated.label" default="Date Created" /></span>
					
						<span class="property-value" aria-labelledby="dateCreated-label"><g:formatDate date="${regionInstance?.dateCreated}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${regionInstance?.default}">
				<li class="fieldcontain">
					<span id="default-label" class="property-label"><g:message code="region.default.label" default="Default" /></span>
					
						<g:each in="${regionInstance.default}" var="d">
						<span class="property-value" aria-labelledby="default-label"><g:link controller="default" action="show" id="${d.id}">${d?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${regionInstance?.lastUpdated}">
				<li class="fieldcontain">
					<span id="lastUpdated-label" class="property-label"><g:message code="region.lastUpdated.label" default="Last Updated" /></span>
					
						<span class="property-value" aria-labelledby="lastUpdated-label"><g:formatDate date="${regionInstance?.lastUpdated}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${regionInstance?.renter}">
				<li class="fieldcontain">
					<span id="renter-label" class="property-label"><g:message code="region.renter.label" default="Renter" /></span>
					
						<g:each in="${regionInstance.renter}" var="r">
						<span class="property-value" aria-labelledby="renter-label"><g:link controller="renter" action="show" id="${r.id}">${r?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:regionInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${regionInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
