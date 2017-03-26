<%@ page import="com.quanlinhatro.Room" %>



<div class="fieldcontain ${hasErrors(bean: roomInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="room.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${roomInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: roomInstance, field: 'status', 'error')} required">
	<label for="status">
		<g:message code="room.status.label" default="Status" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="status" from="${com.quanlinhatro.Room$Status?.values()}" keys="${com.quanlinhatro.Room$Status.values()*.name()}" required="" value="${roomInstance?.status?.name()}" />

</div>

<div class="fieldcontain ${hasErrors(bean: roomInstance, field: 'region', 'error')} required">
	<label for="region">
		<g:message code="room.region.label" default="Region" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="region" name="region.id" from="${com.quanlinhatro.Region.list()}" optionKey="id" required="" value="${roomInstance?.region?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: roomInstance, field: 'amount', 'error')} required">
	<label for="amount">
		<g:message code="room.amount.label" default="Amount" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="amount" type="number" value="${roomInstance.amount}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: roomInstance, field: 'price', 'error')} required">
	<label for="price">
		<g:message code="room.price.label" default="Price" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="price" type="number" value="${roomInstance.price}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: roomInstance, field: 'maxRenter', 'error')} required">
	<label for="maxRenter">
		<g:message code="room.maxRenter.label" default="Max Renter" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="maxRenter" type="number" value="${roomInstance.maxRenter}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: roomInstance, field: 'dueDate', 'error')} required">
	<label for="dueDate">
		<g:message code="room.dueDate.label" default="Due Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="dueDate" type="number" value="${roomInstance.dueDate}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: roomInstance, field: 'lease', 'error')} ">
	<label for="lease">
		<g:message code="room.lease.label" default="Lease" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${roomInstance?.lease?}" var="l">
    <li><g:link controller="lease" action="show" id="${l.id}">${l?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="lease" action="create" params="['room.id': roomInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'lease.label', default: 'Lease')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: roomInstance, field: 'renter', 'error')} ">
	<label for="renter">
		<g:message code="room.renter.label" default="Renter" />
		
	</label>
	<g:select name="renter" from="${com.quanlinhatro.Renter.list()}" multiple="multiple" optionKey="id" size="5" value="${roomInstance?.renter*.id}" class="many-to-many"/>

</div>

<div class="fieldcontain ${hasErrors(bean: roomInstance, field: 'use', 'error')} ">
	<label for="use">
		<g:message code="room.use.label" default="Use" />
		
	</label>
	<g:select name="use" from="${com.quanlinhatro.Use.list()}" multiple="multiple" optionKey="id" size="5" value="${roomInstance?.use*.id}" class="many-to-many"/>

</div>

