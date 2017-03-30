<%--
  Created by IntelliJ IDEA.
  User: giapn
  Date: 3/29/2017
  Time: 9:20 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Phòng ${room.name}</title>
    <meta name="layout"content="main"/>
</head>

<body>
<qlnhatro:breadcrumbs current="Phòng ${room.name}"/>
<div class="row">

    <div class="col-md-12 col-sm-12 col-xs-12">
        <div class="box">
            <div class="page-show">
                <div class="page-show-header">
                    <img class="hidden-xs" src="${resource(file: 'images/home_1.png')}" width="100" height="100"/>
                    <div class="show-header">
                        <div class="show-title">
                            <span class="title">Phòng ${room.name}</span>
                            <div class="group-button">

                            </div>
                        </div>
                        <div style="margin-left: -15px; margin-right: -15px">
                            <div class="col-md-6 col-sm-6 col-xs-12">
                                <table class="infor">
                                    <tr>
                                        <td>Tình trạng</td>
                                        <td>${room.status.name}</td>
                                    </tr>
                                    <tr>
                                        <td>Giá phòng</td>
                                        <td><g:formatNumber number="${room.price}" format="###,###,###" locale="en"/> đ</td>
                                    </tr>
                                    <tr>
                                        <td>Loại phòng</td>
                                        <td>Loại 2 </td>
                                    </tr>
                                </table>
                                <div class="clearfix"></div>
                            </div>
                            <div class="col-md-6 col-sm-6 col-xs-12">
                                <table class="infor">
                                    <tr>
                                        <td>Số điện</td>
                                        <td>123</td>
                                    </tr>
                                    <tr>
                                        <td>Số nước</td>
                                        <td>47</td>
                                    </tr>

                                    <tr>
                                        <td>Cập nhật</td>
                                        <td>${new Date().format('dd-MM-yyyy')}</td>
                                    </tr>
                                </table>
                                <div class="clearfix"></div>
                            </div>
                            <div class="col-md-12 col-sm-12 col-xs-12">
                                <table class="infor no-border">
                                    <tr>
                                        <td>Mô tả</td>
                                        <td>Phòng có ban công rộng</td>
                                    </tr>
                                </table>
                            <div class="clearfix"></div>
                            </div>
                            <div class="clearfix"></div>

                        </div>
                    </div>
                </div>
                <div class="page-show-body">
                    <div class="row">
                        <div class="col-md-8 col-sm-7 col-xs-12">
                            <div id="room_show_use">
                                <g:form controller="use" action="save" class="form-horizontal">

                                   %{-- <table width="100%" class="qlnhatro-table2">
                                        <tr>
                                            <th>Tên</th>
                                            <th>Đơn vị</th>
                                            <th class="right">Đơn giá</th>
                                        </tr>
                                        <g:each in="${room.use}" var="use">
                                            <tr>
                                                <td>${use.name}</td>
                                                <td>${use.unit.name}</td>
                                                <td class="right"><g:formatNumber number="${use.currentPrice}" format="###,###,###" locale="en"/> đ </td>
                                            </tr>
                                        </g:each>
                                    </table>--}%
                                    <table class="table table-hover table-bordered">
                                        <thead>
                                        <tr>
                                            <th  class="text-center hidden-xs">#</th>
                                            <th>Tên</th>
                                            <th class="hidden-xs">Đơn vị</th>
                                            <th>Đơn giá</th>
                                            <th width="155px">Cập nhật</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <g:each in="${room.use}" var="use" status="i">
                                            <tr>
                                                <td class="text-center hidden-xs">${i + 1}</td>
                                                <td>${use.name}</td>
                                                <td class="hidden-xs">${use.unit.name}</td>
                                                <td><g:formatNumber number="${use.currentPrice}" format="###,###,###" locale="en"/> đ </td>
                                                <td>

                                                    <span class="label label-info"><i class="icon-search"></i> Xem</span>
                                                    <span class="label label-warning"><i class="icon-edit"></i> Sửa</span>
                                                    <span class="label label-danger"><i class="icon-trash"></i> Xóa</span>

                                                </td>
                                            </tr>
                                        </g:each>
                                        </tbody>
                                    </table>

                                </g:form>
                            </div>

                            <div>
                                chart
                            </div>
                            <br>
                        </div>
                        <div class="col-md-4 col-sm-5 col-xs-12" >
                            <div>
                                <ul>
                                    <li>Đang cho thuê: Danh sách người thuê</li>
                                    <li>Đang --------: Lịch sử thuê phòng</li>
                                </ul>
                            </div>
                            <br>
                            <div style="border: 1px solid blue">
                                Note
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>