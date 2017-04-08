
<%@ page import="com.quanlinhatro.Renter" %>
<!DOCTYPE html>
<html>
<head>
	<meta name="layout" content="main">
	<title>Khu/Dãy trọ</title>
</head>
<body>
<qlnhatro:breadcrumbs title="Khu/Dãy trọ" link="${createLink(controller: 'region', action: 'list')}" current="${region.name}"/>
<br>
<g:if test="${flash.message}">
	<div class="alert alert-success fade in">
		${flash.message}
	</div>
</g:if>
<div class="col-md-12 col-sm-12 col-xs-12">
	<div class="box">
		<div class="row">
			<div class="col-md-12 col-sm-12 col-xs-12">
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
							<div class="col-md-12 col-sm-12 col-xs-12">

							</div>
						</div>

					</div>
				</div>
			</div>
		</div>
	%{--	<div class="row">
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
		</div>--}%
	</div>
</div>
%{--<script>
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
</script>--}%
</body>
</html>
