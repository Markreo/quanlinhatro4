
<%@ page import="com.quanlinhatro.Room" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'room.label', default: 'Room')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>

	<div class="page-breadcrumbs">
		<ul class="breadcrumb">
			<li> <i class="fa fa-home"></i><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
			<li> <g:message code="default.list.label" args="[entityName]" /></li>
		</ul>
	</div>

	<div class="page-header position-relative">
		<div class="header-title">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
		</div>

		<div class="header-buttons">
			<a class="sidebar-toggler" href="#">
				<i class="fa fa-arrows-h"></i>
			</a>
			<a class="refresh" id="refresh-toggler" href="">
				<i class="glyphicon glyphicon-refresh"></i>
			</a>
			<a class="fullscreen" id="fullscreen-toggler" href="#">
				<i class="glyphicon glyphicon-fullscreen"></i>
			</a>
		</div>

	</div>

	<div class="page-body">
		<div id="list-room" class="content scaffold-list" role="main">

			%{--<div class="widget">
				<div class="widget-header">
					<div class="widget-caption">
						<strong>
							<g:message code="default.list.label" args="[entityName]" />
						</strong>
					</div>
				</div>


				<div class="widget-body">
					<g:if test="${flash.message}">
						<div class="message" role="status">${flash.message}</div>
					</g:if>
					<table class="table table-hover" >
						<thead style="background: white">
						<tr>

							<g:sortableColumn property="name" title="Tên" />

							<g:sortableColumn property="status" title="${message(code: 'room.status.label', default: 'Status')}" />

							<th><g:message code="room.region.label" default="Region" /></th>

							<g:sortableColumn property="amount" title="${message(code: 'room.amount.label', default: 'Amount')}" />

							<g:sortableColumn property="price" title="${message(code: 'room.price.label', default: 'Price')}" />

							<g:sortableColumn property="maxRenter" title="${message(code: 'room.maxRenter.label', default: 'Max Renter')}" />

						</tr>
						</thead>
						<tbody>
						<g:each in="${roomInstanceList}" status="i" var="roomInstance">
							<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

								<td><g:link action="show" id="${roomInstance.id}">${fieldValue(bean: roomInstance, field: "name")}</g:link></td>

								<td>${fieldValue(bean: roomInstance, field: "status")}</td>

								<td>${fieldValue(bean: roomInstance, field: "region")}</td>

								<td>${fieldValue(bean: roomInstance, field: "amount")}</td>

								<td>${fieldValue(bean: roomInstance, field: "price")}</td>

								<td>${fieldValue(bean: roomInstance, field: "maxRenter")}</td>

							</tr>
						</g:each>
						</tbody>
					</table>
					<div class="pagination">
						<g:paginate total="${roomInstanceCount ?: 0}" />
					</div>
				</div>
			</div>--}%


			<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
				<div class="row">
					<div class="col-xs-12">
						<div class="dashboard-box">

							<div class="box-header">
								<div class="deadline">
									Danh sách phòng cho thuê
								</div>
							</div>


							<div class="box-tabbs">
								<div class="tabbable">
									<div class="tab-content tabs-flat no-padding">
										<div class="tab-pane animated fadeIn no-padding-bottom active">
											<div class="col-md-12">
												<div class="horizontal-space"></div>
											</div>

											<a class="btn btn-default margin-left-20" href="${createLink(controller: 'room', action: 'create')}" rel="new-tab"><i class="fa fa-plus"></i> Thêm</a>

											<div class="tickets-container" style="background: white">
												<ul class="tickets-list">
													<g:each in="${rooms}" var="r" status="i">
														<g:if test="${r.status == com.quanlinhatro.Room.Status.ARERENTING}">
															<li class="ticket-item">
																<div class="row">
																	<div class="ticket-user col-md-4 col-sm-12">
																		<img src="${resource(dir:'assets/img', file: 'home_' + r.status.id + '.png')}" class="user-avatar">
																		<a class="user-name" rel="new-tab" href="${createLink(controller: 'room', action: 'update', id: r.id)}">Phòng ${r.name}</a>
																		<span class="user-at">-</span>
																		<span class="user-company">${r.status.name}</span>
																	</div>
																	<div class="ticket-time  col-md-3 col-sm-6 col-xs-6">
																		<div class="divider hidden-xs hidden-sm hidden-xs"></div>
																		<i class="fa fa-user"></i>
																		${r.renters.size()} <span class="time"> người đang thuê</span>
																	</div>
																	<div class="ticket-time  col-md-4 col-sm-6 col-xs-6">
																		<div class="divider hidden-xs hidden-sm hidden-xs"></div>
																		<span class="time"> <g:formatNumber number="${r.leaseThisMonth?.total}" format="###,###,###" />  đến ngày ${r.dueDateThisMonth.format('dd/MM/yyyy')}</span>
																	</div>
																	<div class="ticket-type hidden-sm hidden-xs" style="position: absolute;right: 0; width: 90px">
																		<span class="divider hidden-xs"></span>
																		<span class="type">${r.status.action}</span>
																	</div>
																	<a class="ticket-state bg-darkorange" href="${createLink(controller: 'room', action: 'update', id: r.id)}" rel="new-tab">
																		<i class="fa fa-edit" style="padding-left: 2px; padding-top: 1px"></i>
																	</a>
																</div>
															</li>
														</g:if>
														<g:if test="${r.status == com.quanlinhatro.Room.Status.NEW}">
															<li class="ticket-item">
																<div class="row">
																	<div class="ticket-user col-md-4 col-sm-12">
																		<img src="${resource(dir:'assets/img', file: 'home_' + r.status.id + '.png')}" class="user-avatar">
																		<a class="user-name" rel="new-tab" href="${createLink(controller: 'room', action: 'update', id: r.id)}">Phòng ${r.name}</a>
																		<span class="user-at">-</span>
																		<span class="user-company">${r.status.name}  - giá phòng - ghi chú</span>
																	</div>
																	<div class="ticket-type hidden-sm hidden-xs" style="position: absolute;right: 0; width: 90px">
																		<span class="divider hidden-xs"></span>
																		<span class="type">${r.status.action}</span>
																	</div>
																	<a class="ticket-state bg-green" href="${createLink(controller: 'room', action: 'forRent', id: r.id)}" rel="new-tab">
																		<i class="fa fa-arrow-right"></i>
																	</a>
																</div>
															</li>
														</g:if>
														<g:if test="${r.status == com.quanlinhatro.Room.Status.MORTGAGED}">
															<li class="ticket-item">
																<div class="row">
																	<div class="ticket-user col-md-4 col-sm-12">
																		<img src="${resource(dir:'assets/img', file: 'home_' + r.status.id + '.png')}" class="user-avatar">
																		<a class="user-name" rel="new-tab" href="${createLink(controller: 'room', action: 'update', id: r.id)}">Phòng ${r.name}</a>
																		<span class="user-at">-</span>
																		<span class="user-company">${r.status.name}</span>
																	</div>
																	<div class="ticket-time  col-md-3 col-sm-6 col-xs-6">
																		<div class="divider hidden-xs hidden-sm hidden-xs"></div>
																		<i class="fa fa-money"></i>
																		<span class="time"> Đã cọc:  <g:formatNumber number="${r.price}" format="###,###,###" /> </span>
																	</div>
																	<div class="ticket-time  col-md-4 col-sm-6 col-xs-6">
																		<div class="divider hidden-xs hidden-sm hidden-xs"></div>
																		<span class="time"> Ngày đến ${r.dueDateThisMonth.format('dd/MM/yyyy')}</span>
																	</div>
																	<div class="ticket-type hidden-sm hidden-xs" style="position: absolute;right: 0; width: 90px">
																		<span class="divider hidden-xs"></span>
																		<span class="type">${r.status.action}</span>
																	</div>
																	<a class="ticket-state bg-azure"  rel="new-tab">
																		<i class="fa fa-check" style="padding-left: 2px; padding-top: 1px"></i>
																	</a>
																</div>
															</li>
														</g:if>
													</g:each>
												</ul>
											</div>

										</div>
									</div>
								</div>
								<div class="clearfix"></div>
								<div class="ql-footer"></div>
							</div>
						</div>
					</div>
				</div>
			</div>

		</div>
	</div>



	</body>
</html>
