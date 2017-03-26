<%@ page import="com.quanlinhatro.Unit" %>
<g:formRemote name="create_default" url="[controller: 'defaultRegion', action:'lineNew']" class="form-horizontal" id="create_default" onSuccess="addnewline(data)" before="if(\$('#create_default').find('input.has-error').length != 0) {return false} ">
    <g:if test="${left}">
        <div class="form-group">

            <label class="col-md-3 col-sm-3 col-xs-3 control-label text-right" >Loại:</label>
            <div class="col-md-9 col-sm-9 col-xs-9">
                <g:if test="${"tienphong" in left}">
                    <label class="radio-inline">
                        <input type="radio" class="uniform" name="type" value="tienphong">
                        Tiền phòng
                    </label>
                </g:if>
                <g:if test="${"tiendien" in left}">
                    <label class="radio-inline">
                        <input type="radio" class="uniform" name="type" value="tiendien">
                        Tiền điện
                    </label>
                </g:if>
                <g:if test="${"tiennuoc" in left}">
                    <label class="radio-inline">
                        <input type="radio" class="uniform" name="type" value="tiennuoc">
                        Tiền nước
                    </label>
                </g:if>

                <label class="radio-inline">
                    <input type="radio" class="uniform" name="type" value="null" checked>
                    Khác
                </label>
            </div>
        </div>
        <hr class="wide"/>
    </g:if>
    <g:else>
        <input type="hidden" name="type" value="null">
    </g:else>
    <div class="form-group">
        <label class="col-md-3 col-sm-3 col-xs-3 control-label text-right" >Tên:</label>
        <div class="col-md-9 col-sm-9 col-xs-9">
            <input type="text" name="default.name" class="form-control required" placeholder="Tên khu" required>
        </div>
    </div>
    <div class="form-group">
        <label class="col-md-3 col-sm3- col-xs-3 control-label text-right" >Đơn vị tính:</label>
        <div class="col-md-9 col-sm-9 col-xs-9" id="selectUnit">
            <g:hiddenField name="special" value="null"/>
            <g:select name="default.unit" from="${com.quanlinhatro.Unit.values()}" optionValue="name" class="form-control"/>
        </div>
    </div>
    <div class="form-group">
        <label class="col-md-3 col-sm-3 col-xs-3 control-label text-right" >Giá:</label>
        <div class="col-md-9 col-sm-9 col-xs-9">
            <input type="text" name="default.currentPrice" class="form-control required" placeholder="Giá" required>
        </div>
    </div>
</g:formRemote>

<div id="select_null" style="display: none">
    <g:select name="default.unit" from="${com.quanlinhatro.Unit.values()}" optionValue="name" class="form-control"/>
</div>

<script>
    var thisTab = $("#create_default");
    $("#create_default").validate();
    $("input[name='type']").on('click', function (e) {
        console.log($(this).val())
        var val = $(this).val();
        if(val == 'tienphong') {
            thisTab.find("input[name='default.name']").val('Tiền phòng').attr('readonly', 'readonly')
            thisTab.find("#selectUnit").html('<select class="form-control" name="default.unit"><option value="${com.quanlinhatro.Unit.PHONG}">Phòng</option><option value="${com.quanlinhatro.Unit.NG}">Người</option></select>')
        }

        if(val == 'tiennuoc') {
            thisTab.find("input[name='default.name']").val('Tiền nước').attr('readonly', 'readonly')
            thisTab.find("#selectUnit").html('<select class="form-control" name="default.unit"><option value="${com.quanlinhatro.Unit.M3}">m&sup3;</option><option value="${com.quanlinhatro.Unit.PHONG}">Phòng</option></select>')
        }

        if(val == 'tiendien') {
            thisTab.find("input[name='default.name']").val('Tiền điện').attr('readonly', 'readonly')
            thisTab.find("#selectUnit").html('<select class="form-control" name="default.unit"><option value="${com.quanlinhatro.Unit.KG}">Kilowatt</option><option value="${com.quanlinhatro.Unit.PHONG}">Phòng</option></select>')
        }

        if(val == 'null') {
            thisTab.find("input[name='default.name']").removeAttr('readonly')
            thisTab.find("#selectUnit").html($("#select_null").html());
        }

    })



</script>