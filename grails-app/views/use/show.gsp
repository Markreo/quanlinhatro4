
<%@ page import="com.quanlinhatro.Use" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'use.label', default: 'Use')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-use" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-use" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list use">
			
				<g:if test="${useInstance?.unit}">
				<li class="fieldcontain">
					<span id="unit-label" class="property-label"><g:message code="use.unit.label" default="Unit" /></span>
					
						<span class="property-value" aria-labelledby="unit-label"><g:fieldValue bean="${useInstance}" field="unit"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${useInstance?.currentValue}">
				<li class="fieldcontain">
					<span id="currentValue-label" class="property-label"><g:message code="use.currentValue.label" default="Current Value" /></span>
					
						<span class="property-value" aria-labelledby="currentValue-label"><g:fieldValue bean="${useInstance}" field="currentValue"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${useInstance?.currentPrice}">
				<li class="fieldcontain">
					<span id="currentPrice-label" class="property-label"><g:message code="use.currentPrice.label" default="Current Price" /></span>
					
						<span class="property-value" aria-labelledby="currentPrice-label"><g:fieldValue bean="${useInstance}" field="currentPrice"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${useInstance?.dateCreated}">
				<li class="fieldcontain">
					<span id="dateCreated-label" class="property-label"><g:message code="use.dateCreated.label" default="Date Created" /></span>
					
						<span class="property-value" aria-labelledby="dateCreated-label"><g:formatDate date="${useInstance?.dateCreated}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${useInstance?.isTIENDIEN}">
				<li class="fieldcontain">
					<span id="isTIENDIEN-label" class="property-label"><g:message code="use.isTIENDIEN.label" default="Is TIENDIEN" /></span>
					
						<span class="property-value" aria-labelledby="isTIENDIEN-label"><g:formatBoolean boolean="${useInstance?.isTIENDIEN}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${useInstance?.isTIENNUOC}">
				<li class="fieldcontain">
					<span id="isTIENNUOC-label" class="property-label"><g:message code="use.isTIENNUOC.label" default="Is TIENNUOC" /></span>
					
						<span class="property-value" aria-labelledby="isTIENNUOC-label"><g:formatBoolean boolean="${useInstance?.isTIENNUOC}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${useInstance?.isTIENPHONGs}">
				<li class="fieldcontain">
					<span id="isTIENPHONGs-label" class="property-label"><g:message code="use.isTIENPHONGs.label" default="Is TIENPHONG s" /></span>
					
						<span class="property-value" aria-labelledby="isTIENPHONGs-label"><g:formatBoolean boolean="${useInstance?.isTIENPHONGs}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${useInstance?.lastUpdated}">
				<li class="fieldcontain">
					<span id="lastUpdated-label" class="property-label"><g:message code="use.lastUpdated.label" default="Last Updated" /></span>
					
						<span class="property-value" aria-labelledby="lastUpdated-label"><g:formatDate date="${useInstance?.lastUpdated}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${useInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="use.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${useInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:useInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${useInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
