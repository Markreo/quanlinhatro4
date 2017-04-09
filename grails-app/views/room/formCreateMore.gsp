<%--
  Created by IntelliJ IDEA.
  User: giapn
  Date: 4/9/2017
  Time: 4:03 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Đăng kí phòng mới</title>
    <meta name="layout" content="main"/>
</head>

<body>

<qlnhatro:breadcrumbs title="Phòng" link="${createLink(controller: 'room', action: 'list')}" current="Đăng kí phòng mới"/>

<div class="row">
    <div class="col-md-12 col-sm-12 col-xs-12">
        <div class="box">
            <g:form url="[controller: 'room', action: 'saveMore']" class="form-horizontal" id="room_create">

                <div class="form-group">
                    <h3 class="title">Đăng kí phòng mới</h3>
                </div>


                <hr class="wide"/>
                <div class="form-group">
                    <strong >Thông tin phòng:</strong>
                </div>
                <div class="form-group">
                    <label class="col-md-3 col-sm-4 col-xs-4 no-padding-right control-label text-right" >Tên phòng:</label>
                    <div class="col-md-9 col-sm-8 col-xs-8" style="position: relative">
                        <input type="text" name="room.name" class="form-control required" required style="background: transparent; padding-left:47px !important;" value="${room.name?.replace('Phòng ','')}">
                        <span style="position: absolute; top: 0; padding-top:7px; height: 100%; padding-left:5px">Phòng</span>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-md-3 col-sm-4 col-xs-4 no-padding-right control-label text-right" >Giá phòng:</label>
                    <div class="col-md-9 col-sm-8 col-xs-8">
                        <input type="text" name="room.price" class="form-control required" required value="${room.price}">
                    </div>
                </div>
                <g:if test="${ng}">
                    <div class="form-group">
                        <label class="col-md-3 col-sm-4 col-xs-4 no-padding-right control-label text-right" >Số người tối đa:</label>
                        <div class="col-md-9 col-sm-8 col-xs-8">
                            <input type="text" name="room.maxRenter" class="form-control required" required value="${room.maxRenter}">
                        </div>
                    </div>
                </g:if>
                <g:set var="types" value="${com.quanlinhatro.RoomType.findAllByRegion(region)}"/>
                <g:if test="${types}">
                    <div class="form-group">
                        <label class="col-md-3 col-sm-4 col-xs-4 no-padding-right control-label text-right" >Loại phòng:</label>
                        <div class="col-md-9 col-sm-8 col-xs-8">
                            <g:select rel="room_type" name="room.type" from="${types}" optionKey="id" optionValue="name" class="form-control" noSelection="['':'--Loại phòng--']" value="${room.type?.id}"/>
                        </div>
                    </div>
                </g:if>
                <div class="form-group">
                    <label class="col-md-3 col-sm-4 col-xs-4 no-padding-right control-label text-right" >Trạng thái:</label>
                    <div class="col-md-9 col-sm-8 col-xs-8">
                        <g:select name="room.status" from="${com.quanlinhatro.Room.Status.values()}" optionValue="name" class="form-control" value="${room.status.id}"/>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-md-3 col-sm-4 col-xs-4 no-padding-right control-label text-right" >Ghi chú:</label>
                    <div class="col-md-9 col-sm-8 col-xs-8">
                        <textarea class="form-control" rows="2" name="room.note" placeholder="Ghi chú">${room.note}</textarea>
                    </div>
                </div>
                <div class="clearfix"></div>
                <hr class="wide"/>
                <div class="form-group">
                    <strong>Lựa chọn những khoản được tính:</strong>
                </div>
                <div class="form-group" style="margin-bottom: 0">
                    <div class="row">
                        <div class="col-md-12 col-sm-12 col-xs-12">
                            <div class="col-md-2 col-sm-2 hidden-xs"></div>
                            <div class="col-md-3 col-sm-3 col-xs-4 no-padding-right">
                                <label> Tên: </label>
                            </div>
                            <div class="col-md-3 col-sm-3 col-xs-3 no-padding-right">
                                <label class="hidden-xs"> Đơn vị tính: </label>
                                <label class="hidden-lg hidden-md hidden-sm"> Đơn vị: </label>
                            </div>
                            <div class="col-md-4 col-sm-4 col-xs-4">
                                <label> Đơn giá: </label>
                            </div>
                        </div>
                    </div>
                </div>
                <g:each in="${region.defaultRegion.sort {it.id}}" var="df">
                    <g:render template="/defaultRegion/line_special" model="[df: df]"/>
                </g:each>


                <div class="form-group">
                    <div class="col-md-12">
                        <div class="pull-right">
                            <button type="submit" class="btn btn-default" onclick="beforesubmit()">Lưu</button>
                        </div>
                    </div>
                </div>
            </g:form>
        </div>
    </div>
</div>
<script>
    beforesubmit = function () {
        $.each($("input[rel='yes']"), function (index, input) {
            if(!$(input).is(":checked")) {
                $(input).parents('.form-group').remove();
            }
        });
    }
</script>
</body>
</html>