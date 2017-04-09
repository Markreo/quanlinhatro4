
<%@ page import="com.quanlinhatro.Renter" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <title>Danh sách Khu/Dãy trọ</title>
</head>
<body>
<qlnhatro:breadcrumbs current="Danh sách Khu/Dãy trọ"/>
<div class="col-md-12 col-sm-12 col-xs-12">
    <div class="box">
        <div class="row">

            <div id="list-renter" class="content scaffold-list" role="main">
                <h3 class="title">Danh sách Khu/Dãy trọ</h3>

                <a id="createRenter" href="${createLink(controller: 'region', action: 'create')}" class="btn btn-default" style="position: absolute; top: 16px; right: 30px"><i class="icon-plus"></i> Thêm</a>
                <br>
                <qlnhatro:message/>
                <table class="table table-hover table-bordered">
                    <thead>
                    <tr>

                        <th  class="text-center hidden-xs">#</th>
                        <th>Tên</th>
                        <th>Địa chỉ</th>
                        <th>Số phòng</th>
                        <th>Ghi chú</th>
                        <th></th>
                    </tr>
                    </thead>
                    <tbody>
                    <g:each in="${regions}" status="i" var="region">
                        <tr>

                            <td class="text-center hidden-xs">${i + 1}</td>

                            <td><g:link action="show" id="${region.id}">${region.name}</g:link></td>

                            <td>${region.address}</td>

                            <td>${region.room?.size()}</td>

                            <td>${region.note}</td>
                            <g:if test="${region.id != currentRegion.id}">
                                <th><g:link controller="region" action="change" id="${region.id}"><i class="icon-refresh"></i> </g:link> </th>
                            </g:if>
                            <g:else>
                                <th></th>
                            </g:else>

                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</body>
</html>
