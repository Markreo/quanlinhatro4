<%--
  Created by IntelliJ IDEA.
  User: giapn
  Date: 3/25/2017
  Time: 11:19 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Tạo Khu/Dãy trọ</title>
    <meta name="layout" content="main"/>
</head>

<body>


<qlnhatro:breadcrumbs current="Tạo một Khu/Dãy trọ"/>

<div class="row">
    <div class="col-md-12 col-sm-12 col-xs-12">
        <div class="box">
            <g:form url="[controller: 'region', action: 'save', id: region.id]" class="form-horizontal" id="createRegion">

                <div class="form-group">
                    <h3 class="title">Tạo một Khu/Dãy trọ</h3>
                </div>


                <hr class="wide"/>
                <div class="form-group">
                    <strong >Thông tin khu:</strong>
                </div>
                <div class="form-group">
                    <label class="col-md-2 col-sm-2 col-xs-3 control-label text-right" >Tên khu:</label>
                    <div class="col-md-10 col-sm-10 col-xs-9">
                        <input type="text" name="region.name" class="form-control required" placeholder="Tên khu" required>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-md-2 col-sm-2 col-xs-3 control-label text-right">Địa chỉ:</label>
                    <div class="col-md-10 col-sm-10 col-xs-9">
                        <input type="text" name="region.address" class="form-control" placeholder="Địa chỉ">
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-md-2 col-sm-2 col-xs-3 control-label text-right">Ghi chú:</label>
                    <div class="col-md-10 col-sm-10 col-xs-9">
                        <textarea  class="form-control" rows="2" name="note" placeholder="Ghi chú"></textarea>
                    </div>
                </div>
                <hr class="wide"/>
                <div class="form-group">
                    <strong>Khai báo các khoản sẽ được tính:</strong>
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

                <g:render template="/defaultRegion/line_special" model="[special: 'tienphong']"/>
                <g:render template="/defaultRegion/line_special" model="[special: 'tiendien']"/>
                <g:render template="/defaultRegion/line_special" model="[special: 'tiennuoc']"/>

                <div id="new_line"></div>

                <div class="form-group">
                    <div class="row">
                        <div class="col-md-12 col-sm-12 col-xs-12">
                            <div class="col-md-2 col-sm-2 hidden-xs"></div>
                            <div class="col-md-10 col-sm-10 col-xs-12 text-center" >
                                <div class="form-group" style="border: 2px dashed #d9d9d9; margin-right: 0px; margin-left: 0px; padding: 7px; cursor: pointer" onclick="addNewDefault()">
                                    Thêm khoản mới
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <hr class="wide"/>
                <div class="form-group">
                    <div class="col-md-12">
                        <div class="pull-right">
                            <button type="submit" class="btn btn-default">Lưu</button>
                        </div>
                    </div>
                </div>
            </g:form>
        </div>
    </div>
</div>
<script>

    function addNewDefault() {
        var specials = $("input[name='special']");
        var  realy = [];
        $.each(specials, function (index, sp) {
            if($(sp).val() != 'null') {
                realy.push($(sp).val())
            }
        });
        $.post("${createLink(controller: 'defaultRegion', action: 'create')}", {realy: realy}, function (html) {
            bootbox.dialog({
                message: html,
                title: "Tạo một khoản mới",
                size: 'large',
                buttons: {
                    success: {
                        label: "OK!",
                        className: "btn-success",
                        callback: function() {

                            $("#create_default").submit();
                            return false
                        }
                    }
                }
            });
        })
    }

    function addnewline(html) {
        $("#new_line").append(html);
        bootbox.hideAll();
    }

    $(document).on('click', "button[rel='remove']", function (event) {
        event.preventDefault();
        $(this).parents('.form-group').remove();
    })
</script>
</body>
</html>