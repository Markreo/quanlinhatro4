<%@ page import="com.quanlinhatro.Renter" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <title>Loại phòng</title>
</head>
<body>
<qlnhatro:breadcrumbs current="Loại phòng"/>
<div class="col-md-12 col-sm-12 col-xs-12">
    <div class="box">
        <div class="row">

                <br>
            <div id="list-renter" class="content scaffold-list" role="main">
                <h3 class="title" style="display: inline">Danh sách Loại phòng </h3>

                <a id="createRoomType" href="${createLink(controller: 'roomType', action: 'create')}" class="btn btn-default btn-sm" style="display: inline"><i class="icon-plus"></i> Thêm</a>
                <br>
                <br>
                <qlnhatro:message/>


                <g:each in="${types}" status="i" var="type">
                    <div class="col-md-8 col-sm-8 col-xs-12">
                        <div class="box">
                            <div class="row">
                                <br>
                                <div class="widget box widget-closed" style="margin-bottom: 0px">
                                    <div class="widget-header">
                                        <h5 style="display: inline;">${type.name}</h5>
                                        <div class="widget-buttons">
                                            <a href="${createLink(controller: 'roomType', action: 'edit', id: type.id)}" rel="type_edit" class="edit" style="margin-right: 10px"><i class="icon-edit"></i> </a>
                                            <a onclick="bootbox.confirm('Bạn có chắc là sẽ xóa \'${type.name}\'?')" href="${createLink(controller: 'roomType', action: 'delete', id: type.id)}" style="color: #e25856; margin-right: 10px;"><i class="icon-trash"></i></a>
                                            <a href="javascript:void(0)" class="widget-collapse"><i class="icon-angle-up"></i></a>
                                        </div>
                                    </div>
                                    <div class="widget-content" style="display: none">
                                        <g:form controller="recommendPrice" action="save" class="form-horizontal">
                                            <g:hiddenField name="typeId" value="${type.id}"/>
                                            <g:each in="${com.quanlinhatro.RecommendPrice.findAllByRoomType(type)}" var="recommend">
                                                <div class="form-group">
                                                    <label class="control-label col-md-3 col-sm-3 col-xs-3">${recommend.defaultRegion.name}</label>
                                                    <g:hiddenField name="id" value="${recommend.id}"/>
                                                    <div class="col-md-9 col-sm-9 col-xs-9">
                                                        <input type="text" name="price" class="form-control" value="${recommend.price}">
                                                    </div>
                                                </div>
                                            </g:each>
                                            <div class="form-group">
                                                <div class="col-md-12 col-sm-12 col-xs-12" style="position: relative">
                                                    <button type="submit" class="btn btn-default" style="position: absolute;right:15px">Cập nhật</button>
                                                    <br>
                                                </div>
                                            </div>
                                        </g:form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
            </g:each>

            </div>
        </div>
    </div>
</div>
<script>
    $("#createRoomType").on('click',function (event) {
        event.preventDefault();
        var url = this.href
        $.post(url, function(html) {
            bootbox.dialog({
                title: 'Thêm loại phòng',
                message: html
            })
        })
    })

    $("a[rel='type_edit']").on('click', function (e) {
        e.preventDefault();
        var url = this.href
        $.post(url, function(html) {
            bootbox.dialog({
                title: 'Đổi tên',
                message: html
            })
        })
    })
</script>
</body>
</html>
