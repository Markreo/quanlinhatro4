
<%@ page import="com.quanlinhatro.Renter" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<title>Danh sách khách thuê</title>
	</head>
	<body>
	<qlnhatro:breadcrumbs current="Danh sách khách thuê"/>
	<div class="col-md-12 col-sm-12 col-xs-12">
		<div class="box">
			<div class="row">

			<div id="list-renter" class="content scaffold-list" role="main">
			<h3 class="title">Danh sách khách thuê </h3>

			<a id="createRenter" href="${createLink(controller: 'renter', action: 'create')}" class="btn btn-default" style="position: absolute; top: 16px; right: 30px"><i class="icon-plus"></i> Thêm</a>
			<br>
				<qlnhatro:message/>
			<table class="table table-hover table-bordered">
			<thead>
					<tr>

						<th  class="text-center hidden-xs">#</th>
					
						<g:sortableColumn property="firstName" title="Họ tên" />

						<g:sortableColumn property="room" title="Phòng" />

						<g:sortableColumn property="sex" title="Giới tính" />
					
						<g:sortableColumn property="yearOfBirth" title="Năm sinh" />

						<g:sortableColumn property="placeOfBirth" title="Nơi sinh" />

						<g:sortableColumn property="phone" title="Số điện thoại" />



					</tr>
				</thead>
				<tbody>
				<g:set var="rooms" value="${com.quanlinhatro.Room.list()}"/>
				<g:each in="${renterInstanceList}" status="i" var="renterInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

						<td class="text-center hidden-xs">${i + 1}</td>

						<td><g:link action="show" id="${renterInstance.id}">${fieldValue(bean: renterInstance, field: "fullname")}</g:link></td>

						<g:set var="room" value="${rooms?.find {renterInstance in it?.renter}}"/>
						<td><g:link controller="room" action="show" id="${room?.id}">${room?.name}</g:link></td>

						<td>${fieldValue(bean: renterInstance, field: "sex.name")}</td>

						<td>${renterInstance.yearOfBirth}</td>

						<td>${fieldValue(bean: renterInstance, field: "placeOfBirth")}</td>

						<td>${fieldValue(bean: renterInstance, field: "phone")}</td>

					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${renterInstanceCount ?: 0}" />
			</div>
		</div>
			</div>
		</div>
	</div>
	</body>
</html>
