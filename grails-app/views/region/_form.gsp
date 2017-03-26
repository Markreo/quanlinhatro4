<%@ page import="com.quanlinhatro.Region" %>



<div class="fieldcontain ${hasErrors(bean: regionInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="region.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${regionInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: regionInstance, field: 'address', 'error')} ">
	<label for="address">
		<g:message code="region.address.label" default="Address" />
		
	</label>
	<g:textField name="address" value="${regionInstance?.address}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: regionInstance, field: 'user', 'error')} required">
	<label for="user">
		<g:message code="region.user.label" default="User" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="user" name="user.id" from="${com.quanlinhatro.User.list()}" optionKey="id" required="" value="${regionInstance?.user?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: regionInstance, field: 'room', 'error')} ">
	<label for="room">
		<g:message code="region.room.label" default="Room" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${regionInstance?.room?}" var="r">
    <li><g:link controller="room" action="show" id="${r.id}">${r?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="room" action="create" params="['region.id': regionInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'room.label', default: 'Room')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: regionInstance, field: 'default', 'error')} ">
	<label for="default">
		<g:message code="region.default.label" default="Default" />
		
	</label>
	<g:select name="default" from="${com.quanlinhatro.Default.list()}" multiple="multiple" optionKey="id" size="5" value="${regionInstance?.default*.id}" class="many-to-many"/>

</div>

<div class="fieldcontain ${hasErrors(bean: regionInstance, field: 'renter', 'error')} ">
	<label for="renter">
		<g:message code="region.renter.label" default="Renter" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${regionInstance?.renter?}" var="r">
    <li><g:link controller="renter" action="show" id="${r.id}">${r?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="renter" action="create" params="['region.id': regionInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'renter.label', default: 'Renter')])}</g:link>
</li>
</ul>


</div>

