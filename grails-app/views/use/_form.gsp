<%@ page import="com.quanlinhatro.Use" %>



<div class="fieldcontain ${hasErrors(bean: useInstance, field: 'unit', 'error')} required">
	<label for="unit">
		<g:message code="use.unit.label" default="Unit" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="unit" from="${com.quanlinhatro.Unit?.values()}" keys="${com.quanlinhatro.Unit.values()*.name()}" required="" value="${useInstance?.unit?.name()}" />

</div>

<div class="fieldcontain ${hasErrors(bean: useInstance, field: 'currentValue', 'error')} required">
	<label for="currentValue">
		<g:message code="use.currentValue.label" default="Current Value" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="currentValue" type="number" value="${useInstance.currentValue}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: useInstance, field: 'currentPrice', 'error')} required">
	<label for="currentPrice">
		<g:message code="use.currentPrice.label" default="Current Price" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="currentPrice" type="number" value="${useInstance.currentPrice}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: useInstance, field: 'isTIENDIEN', 'error')} ">
	<label for="isTIENDIEN">
		<g:message code="use.isTIENDIEN.label" default="Is TIENDIEN" />
		
	</label>
	<g:checkBox name="isTIENDIEN" value="${useInstance?.isTIENDIEN}" />

</div>

<div class="fieldcontain ${hasErrors(bean: useInstance, field: 'isTIENNUOC', 'error')} ">
	<label for="isTIENNUOC">
		<g:message code="use.isTIENNUOC.label" default="Is TIENNUOC" />
		
	</label>
	<g:checkBox name="isTIENNUOC" value="${useInstance?.isTIENNUOC}" />

</div>

<div class="fieldcontain ${hasErrors(bean: useInstance, field: 'isTIENPHONGs', 'error')} ">
	<label for="isTIENPHONGs">
		<g:message code="use.isTIENPHONGs.label" default="Is TIENPHONG s" />
		
	</label>
	<g:checkBox name="isTIENPHONGs" value="${useInstance?.isTIENPHONGs}" />

</div>

<div class="fieldcontain ${hasErrors(bean: useInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="use.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${useInstance?.name}"/>

</div>

