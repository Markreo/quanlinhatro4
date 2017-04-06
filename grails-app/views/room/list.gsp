<%--
  Created by IntelliJ IDEA.
  User: giapn
  Date: 3/26/2017
  Time: 9:02 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Danh sách phòng trọ</title>
    <meta name="layout" content="main"/>
</head>

<body>
<qlnhatro:breadcrumbs current="Danh sách phòng trọ"/>
<div class="row">

    <div class="col-md-12 col-sm-12 col-xs-12">
        <div class="box">
            <div class="row">
                <div class="col-md-12">
                    <h3 class="title">Danh sách phòng trọ </h3>
                    <div class="dropdown">
                        <span data-toggle="dropdown" aria-expanded="true">Tất cả <i class="icon-angle-down"></i></span>
                        <ul class="dropdown-menu">
                            <li><a href="#">Tất cả</a></li>
                            <li><a href="#">Đang trống</a></li>
                            <li><a href="#">Đang cho thuê</a></li>
                            <li><a href="#">Quá hạn thanh toán</a></li>
                        </ul>
                    </div>
                </div>
                    <a id="createRoom" href="${createLink(controller: 'room', action: 'create')}" class="btn btn-default" style="position: absolute; top: 16px; right: 30px"><i class="icon-plus"></i> Thêm</a>
            </div>
            <table class="qlnhatro-table1">
                <g:each in="${rooms}" var="room">
                    <g:render template="line" model="[room: room]"/>

                </g:each>
                <tr>
                    <td><img src="${resource(file: 'images/home_1.png')}" width="38px" height="38px"/> </td>
                    <td>Phòng 1 - Đang trống</td>
                    <td> <i class="icon-money"></i> Giá phòng 1,600,000đ</td>
                    <td colspan="2">Phòng rộng 22m2</td>
                    <td>Cho thuê <a class="btn btn-xs btn-success"><i class="icon-check"></i></a></td>
                </tr>
                <tr>
                    <td><img src="${resource(file: 'images/home_1.png')}" width="38px" height="38px"/> </td>
                    <td>Phòng 2 - Đang cho thuê</td>
                    <td><i class="icon-user"></i> 2 người đang thuê</td>
                    <td>Tạm tính: 2,200,000đ</td>
                    <td>Hạn thanh toán: 30/3</td>
                    <td>Cập nhật<a class="btn btn-xs btn-success"><i class="icon-check"></i></a></td>
                </tr>
            </table>
        </div>
    </div>
</div>


<script>
    $("#createRoom").on('click', function (e) {
        e.preventDefault();
        $.post("${createLink(controller: 'room', action: 'formCreate')}", function (html) {
            bootbox.dialog({
                title: 'Đăng kí phòng mới',
                message: html
            })
        })
    })
</script>
</body>
</html>