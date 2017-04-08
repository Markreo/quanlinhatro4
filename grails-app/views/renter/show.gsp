
<%@ page import="com.quanlinhatro.Renter" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<title>Khách thuê</title>
	</head>
	<body>
	<qlnhatro:breadcrumbs title="Khách thuê" link="${createLink(controller: 'renter', action: 'index')}" current="${renterInstance.fullname}"/>
	<br>
	<g:if test="${flash.message}">
		<div class="alert alert-success fade in">
			${flash.message}
		</div>
	</g:if>
	<div class="col-md-12 col-sm-12 col-xs-12">
		<div class="box">
			<div class="row">
				<div class="col-md-7 col-sm-7 col-xs-12">
					<div class="widget box">
						<div class="widget-header">
							<h5 style="display: inline;">Thông tin cơ bản </h5>
							<div class="widget-buttons">
								<g:form url="[resource:renterInstance, action:'delete']" method="DELETE">

									<g:link rel="renter_edit" class="edit" action="edit" resource="${renterInstance}" style="margin-right: 10px"><i class="icon-edit"></i> </g:link>
									<g:link style="color: #e25856" onclick="return confirm('Bạn có chắc chắc là sẽ xóa?')" action="delete" resource="${renterInstance}"><i class="icon-trash"></i> </g:link>
								</g:form>
							</div>
						</div>
						<div class="widget-content">
							<div class="row">
								<div class="col-md-4 col-sm-4 col-xs-12">
									<div style="border: 2px solid rgba(238,238,238,0.6); width: 150px; height: 200px; margin: auto"></div>
								</div>


								<div class="col-md-8 col-sm-8 col-xs-12">
									<ol class="property-list renter">


										<li class="fieldcontain">
											<span id="firstName-label" class="property-label">Họ tên:</span>

											<span class="property-value" aria-labelledby="firstName-label"><g:fieldValue bean="${renterInstance}" field="fullname"/></span>

										</li>


										<g:if test="${renterInstance?.sex}">
											<li class="fieldcontain">
												<span id="sex-label" class="property-label">Giới tính:</span>

												<span class="property-value" aria-labelledby="sex-label">${renterInstance.sex.name}</span>

											</li>
										</g:if>

										<g:if test="${renterInstance?.phone}">
											<li class="fieldcontain">
												<span id="phone-label" class="property-label">Số điện thoại:</span>

												<span class="property-value" aria-labelledby="phone-label"><g:fieldValue bean="${renterInstance}" field="phone"/></span>

											</li>
										</g:if>

										<g:if test="${renterInstance?.placeOfBirth}">
											<li class="fieldcontain">
												<span id="placeOfBirth-label" class="property-label">Nơi sinh:</span>

												<span class="property-value" aria-labelledby="placeOfBirth-label"><g:fieldValue bean="${renterInstance}" field="placeOfBirth"/></span>

											</li>
										</g:if>

										<g:if test="${renterInstance?.userID}">
											<li class="fieldcontain">
												<span id="userID-label" class="property-label">CMND:</span>

												<span class="property-value" aria-labelledby="userID-label"><g:fieldValue bean="${renterInstance}" field="userID"/></span>

											</li>
										</g:if>

										<g:if test="${renterInstance?.yearOfBirth}">
											<li class="fieldcontain">
												<span id="yearOfBirth-label" class="property-label">Năm sinh:</span>

												<span class="property-value" aria-labelledby="yearOfBirth-label">${renterInstance.yearOfBirth}</span>

											</li>
										</g:if>

									</ol>
								</div>
							</div>

						</div>
					</div>
				</div>
				<div class="col-md-5 col-sm-5 col-xs-12">
					<div class="widget box">
						<div class="widget-header">
							<h5>Thông tin liên kết</h5>
						</div>
						<div class="widget-content">
							facebook id:
						</div>
					</div>
				</div>
				<div class="col-md-5 col-sm-5 col-xs-12">
					<div class="widget box">
						<div class="widget-header">
							<h5>Phòng hiện tại</h5>
						</div>
						<div class="widget-content">
							<g:set var="rooms" value="${com.quanlinhatro.Room.list()}"/>
							<g:set var="room" value="${rooms?.find {renterInstance in it?.renter}}"/>
							<label>Phòng: </label>
							<g:select id="renter_select_room" class="form-control" name="roomId" from="${com.quanlinhatro.Room.findAllByRegion(renterInstance.region)}" optionValue="name" optionKey="id" value="${room?.id}" noSelection="['':'--Chọn phòng--']"/>

							<label id="renter_select_room_message" class="has-error help-block"/>
						</div>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-12 col-sm-12 col-xs-12">

					<div class="widget box">
						<div class="widget-header">
							<h5>Lịch sử thuê phòng</h5>
						</div>
						<div class="widget-content">
							<table class="table table-hover table-bordered">
								<thead>
								<tr>
									<th>#</th>
									<th>Từ ngày</th>
									<th>Đến ngày</th>
									<th>Phòng</th>
									<th></th>
								</tr>
								</thead>
								<tbody>
								<tr>
									<td>1</td>
									<td>Joey</td>
									<td>Greyson</td>
									<td class="hidden-xs">joey123</td>
									<td><span class="label label-success">Approved</span></td>
								</tr>
								<tr>
									<td>2</td>
									<td>Wolf</td>
									<td>Bud</td>
									<td class="hidden-xs">wolfy</td>
									<td><span class="label label-info">Pending</span></td>
								</tr>
								<tr>
									<td>3</td>
									<td>Darin</td>
									<td>Alec</td>
									<td class="hidden-xs">alec82</td>
									<td><span class="label label-warning">Suspended</span></td>
								</tr>
								<tr>
									<td>4</td>
									<td>Andrea</td>
									<td>Brenden</td>
									<td class="hidden-xs">andry</td>
									<td><span class="label label-danger">Blocked</span></td>
								</tr>
								</tbody>
							</table>
						</div>
					</div>

				</div>
			</div>
		</div>
	</div>
	<script>
		$("a[rel='renter_edit']").on('click', function(e) {
		    e.preventDefault();
		    var url = this.href
		    $.post(url, function(html) {
		        bootbox.dialog({
					title: 'Sửa thông tin',
					message: html
				})
			})
		})

		$("#renter_select_room").on('change', function () {
		    var _self = $(this);
		    console.log('change')
			$.post("${createLink(controller: 'room', action: 'addToRenter')}", {id: _self.val(), renterId: ${renterInstance.id}}, function (resp) {
			    if(resp == 'true') {
                    $("#renter_select_room_message").text('Đã lưu!')
				}
                setInterval(function () {
                    $("#renter_select_room_message").text('')
                }, 3000);
            })
        })
	</script>
	</body>
</html>
