
<%@ page import="com.quanlinhatro.Detail" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'detail.label', default: 'Detail')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-detail" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-detail" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list detail">
			
				<g:if test="${detailInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="detail.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${detailInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${detailInstance?.lease}">
				<li class="fieldcontain">
					<span id="lease-label" class="property-label"><g:message code="detail.lease.label" default="Lease" /></span>
					
						<span class="property-value" aria-labelledby="lease-label"><g:link controller="lease" action="show" id="${detailInstance?.lease?.id}">${detailInstance?.lease?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${detailInstance?.value}">
				<li class="fieldcontain">
					<span id="value-label" class="property-label"><g:message code="detail.value.label" default="Value" /></span>
					
						<span class="property-value" aria-labelledby="value-label"><g:fieldValue bean="${detailInstance}" field="value"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${detailInstance?.price}">
				<li class="fieldcontain">
					<span id="price-label" class="property-label"><g:message code="detail.price.label" default="Price" /></span>
					
						<span class="property-value" aria-labelledby="price-label"><g:fieldValue bean="${detailInstance}" field="price"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${detailInstance?.dateCreated}">
				<li class="fieldcontain">
					<span id="dateCreated-label" class="property-label"><g:message code="detail.dateCreated.label" default="Date Created" /></span>
					
						<span class="property-value" aria-labelledby="dateCreated-label"><g:formatDate date="${detailInstance?.dateCreated}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${detailInstance?.lastUpdated}">
				<li class="fieldcontain">
					<span id="lastUpdated-label" class="property-label"><g:message code="detail.lastUpdated.label" default="Last Updated" /></span>
					
						<span class="property-value" aria-labelledby="lastUpdated-label"><g:formatDate date="${detailInstance?.lastUpdated}" /></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:detailInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${detailInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
