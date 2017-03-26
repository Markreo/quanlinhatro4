<%@ page import="com.quanlinhatro.Detail" %>



<div class="fieldcontain ${hasErrors(bean: detailInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="detail.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${detailInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: detailInstance, field: 'lease', 'error')} required">
	<label for="lease">
		<g:message code="detail.lease.label" default="Lease" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="lease" name="lease.id" from="${com.quanlinhatro.Lease.list()}" optionKey="id" required="" value="${detailInstance?.lease?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: detailInstance, field: 'value', 'error')} required">
	<label for="value">
		<g:message code="detail.value.label" default="Value" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="value" type="number" value="${detailInstance.value}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: detailInstance, field: 'price', 'error')} required">
	<label for="price">
		<g:message code="detail.price.label" default="Price" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="price" type="number" value="${detailInstance.price}" required=""/>

</div>

