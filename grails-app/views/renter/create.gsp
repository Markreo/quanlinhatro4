<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<title>Thêm khách thuê</title>
	</head>
	<body>
	<qlnhatro:breadcrumbs title="Khách thuê" link="${createLink(controller: 'renter', action: 'index')}" current="Thêm khách thuê"/>
	<br>
	<div class="col-md-7 col-sm-8 col-xs-12">
		%{--<qlnhatro:mainWidget title="Thêm khách thuê">--}%
		<div class="widget box">
		<div class="widget-header">
			<h4>Thêm khách thuê</h4>
		</div>
		<div class="widget-content">
			<div id="create-renter" class="content scaffold-create" role="main">
				<g:if test="${flash.message}">
					<div class="message" role="status">${flash.message}</div>
				</g:if>
				<g:hasErrors bean="${renterInstance}">
					<ul class="errors" role="alert">
						<g:eachError bean="${renterInstance}" var="error">
							<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
						</g:eachError>
					</ul>
				</g:hasErrors>
				<g:form url="[resource:renterInstance, action:'save']" class="form-horizontal form-3-9 row-border">

						<g:render template="form"/>
						<div style="position: relative">
							<button type="submit" name="create" class="btn" style="position: absolute; right: 0px; top: 10px" >Lưu</button>
							<div class="clearfix"></div>
							<br>
							<br>
						</div>


				</g:form>
			</div>
		</div>
	</div>

		%{--</qlnhatro:mainWidget>--}%
	</div>
	<script>
		$(document).ready(function () {
			$("#content").css("background", "#eee")
			$("#container").css("background", "#eee")
        })
	</script>
	</body>
</html>
