<%@ page import="com.quanlinhatro.Renter" %>



<div class="fieldcontain ${hasErrors(bean: renterInstance, field: 'lastName', 'error')} ">
	<label for="lastName">
		Họ & Tên đệm
	</label>
	<g:textField class="form-control" name="lastName" value="${renterInstance?.lastName}"/>

</div>


<div class="fieldcontain ${hasErrors(bean: renterInstance, field: 'firstName', 'error')} required">
	<label for="firstName">
		Tên
		<span class="required-indicator">*</span>
	</label>
	<g:textField class="form-control" name="firstName" required="" value="${renterInstance?.firstName}"/>

</div>


<div class="fieldcontain ${hasErrors(bean: renterInstance, field: 'sex', 'error')} required">
	<label for="sex">
		Giới tính
		<span class="required-indicator">*</span>
	</label>
<div style="display: inline">
	<g:radioGroup name="sex" values="${com.quanlinhatro.Renter.Sex?.values()}" labels="${com.quanlinhatro.Renter.Sex.values().name}" required="required" value="${renterInstance?.sex?.name()}">
		<label class="radio radio-inline" style="padding-top: 0px; margin-top: 0px">
			${it.radio}
			${it.label}
		</label>
	</g:radioGroup>
</div>
</div>

<div class="fieldcontain ${hasErrors(bean: renterInstance, field: 'phone', 'error')} required">
	<label for="phone">
		Số điện thoại
		<span class="required-indicator">*</span>
	</label>
	<g:textField class="form-control" name="phone" required="" value="${renterInstance?.phone}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: renterInstance, field: 'placeOfBirth', 'error')} required">
	<label for="placeOfBirth">
		Nơi sinh
		<span class="required-indicator">*</span>
	</label>
	<g:textField class="form-control" name="placeOfBirth" required="" value="${renterInstance?.placeOfBirth}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: renterInstance, field: 'userID', 'error')} required">
	<label for="userID">
		Số CMND
		<span class="required-indicator">*</span>
	</label>
	<g:textField class="form-control" name="userID" required="" value="${renterInstance?.userID}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: renterInstance, field: 'yearOfBirth', 'error')} required">
	<label for="yearOfBirth">
		Năm sinh
		<span class="required-indicator">*</span>
	</label>
	<g:field class="form-control date-picker" name="yearOfBirth" type="text" value="${renterInstance.yearOfBirth}" required=""/>

</div>

