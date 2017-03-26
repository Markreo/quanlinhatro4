<%@ page import="com.quanlinhatro.Lease" %>



<div class="fieldcontain ${hasErrors(bean: leaseInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="lease.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${leaseInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: leaseInstance, field: 'note', 'error')} ">
	<label for="note">
		<g:message code="lease.note.label" default="Note" />
		
	</label>
	<g:textField name="note" value="${leaseInstance?.note}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: leaseInstance, field: 'toDate', 'error')} required">
	<label for="toDate">
		<g:message code="lease.toDate.label" default="To Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="toDate" precision="day"  value="${leaseInstance?.toDate}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: leaseInstance, field: 'fromDate', 'error')} required">
	<label for="fromDate">
		<g:message code="lease.fromDate.label" default="From Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="fromDate" precision="day"  value="${leaseInstance?.fromDate}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: leaseInstance, field: 'room', 'error')} required">
	<label for="room">
		<g:message code="lease.room.label" default="Room" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="room" name="room.id" from="${com.quanlinhatro.Room.list()}" optionKey="id" required="" value="${leaseInstance?.room?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: leaseInstance, field: 'renter', 'error')} required">
	<label for="renter">
		<g:message code="lease.renter.label" default="Renter" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="renter" from="${com.quanlinhatro.Renter.list()}" multiple="multiple" optionKey="id" size="5" required="" value="${leaseInstance?.renter*.id}" class="many-to-many"/>

</div>

<div class="fieldcontain ${hasErrors(bean: leaseInstance, field: 'detail', 'error')} required">
	<label for="detail">
		<g:message code="lease.detail.label" default="Detail" />
		<span class="required-indicator">*</span>
	</label>
	
<ul class="one-to-many">
<g:each in="${leaseInstance?.detail?}" var="d">
    <li><g:link controller="detail" action="show" id="${d.id}">${d?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="detail" action="create" params="['lease.id': leaseInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'detail.label', default: 'Detail')])}</g:link>
</li>
</ul>


</div>

