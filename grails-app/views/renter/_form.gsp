<%@ page import="com.quanlinhatro.Renter" %>



<div class="fieldcontain ${hasErrors(bean: renterInstance, field: 'firstName', 'error')} required">
	<label for="firstName">
		<g:message code="renter.firstName.label" default="First Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="firstName" required="" value="${renterInstance?.firstName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: renterInstance, field: 'lastName', 'error')} ">
	<label for="lastName">
		<g:message code="renter.lastName.label" default="Last Name" />
		
	</label>
	<g:textField name="lastName" value="${renterInstance?.lastName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: renterInstance, field: 'sex', 'error')} required">
	<label for="sex">
		<g:message code="renter.sex.label" default="Sex" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="sex" from="${com.quanlinhatro.Renter$Sex?.values()}" keys="${com.quanlinhatro.Renter$Sex.values()*.name()}" required="" value="${renterInstance?.sex?.name()}" />

</div>

<div class="fieldcontain ${hasErrors(bean: renterInstance, field: 'phone', 'error')} required">
	<label for="phone">
		<g:message code="renter.phone.label" default="Phone" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="phone" required="" value="${renterInstance?.phone}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: renterInstance, field: 'region', 'error')} required">
	<label for="region">
		<g:message code="renter.region.label" default="Region" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="region" name="region.id" from="${com.quanlinhatro.Region.list()}" optionKey="id" required="" value="${renterInstance?.region?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: renterInstance, field: 'placeOfBirth', 'error')} required">
	<label for="placeOfBirth">
		<g:message code="renter.placeOfBirth.label" default="Place Of Birth" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="placeOfBirth" required="" value="${renterInstance?.placeOfBirth}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: renterInstance, field: 'userID', 'error')} required">
	<label for="userID">
		<g:message code="renter.userID.label" default="User ID" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="userID" required="" value="${renterInstance?.userID}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: renterInstance, field: 'yearOfBirth', 'error')} required">
	<label for="yearOfBirth">
		<g:message code="renter.yearOfBirth.label" default="Year Of Birth" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="yearOfBirth" type="number" value="${renterInstance.yearOfBirth}" required=""/>

</div>

