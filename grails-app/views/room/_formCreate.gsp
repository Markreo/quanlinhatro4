<g:form controller="room" action="save" class="form-horizontal">
    <div class="form-group">
        <label class="col-md-3 col-sm-4 col-xs-4 no-padding-right control-label text-right" >Tên phòng:</label>
        <div class="col-md-9 col-sm-8 col-xs-8" style="position: relative">
            <input type="text" name="room.name" class="form-control required" required style="background: transparent; padding-left:47px !important;">
            <span style="position: absolute; top: 0; padding-top:7px; height: 100%; padding-left:5px">Phòng</span>
        </div>
    </div>
    <div class="form-group">
        <label class="col-md-3 col-sm-4 col-xs-4 no-padding-right control-label text-right" >Giá phòng:</label>
        <div class="col-md-9 col-sm-8 col-xs-8">
            <input type="text" name="room.price" class="form-control required" required>
        </div>
    </div>
    <g:if test="${ng}">
        <div class="form-group">
            <label class="col-md-3 col-sm-4 col-xs-4 no-padding-right control-label text-right" >Số người tối đa:</label>
            <div class="col-md-9 col-sm-8 col-xs-8">
                <input type="text" name="room.maxRenter" class="form-control required" required>
            </div>
        </div>
    </g:if>
    <div class="form-group">
        <label class="col-md-3 col-sm-4 col-xs-4 no-padding-right control-label text-right" >Trạng thái:</label>
        <div class="col-md-9 col-sm-8 col-xs-8">
            <g:select name="room.status" from="${com.quanlinhatro.Room.Status.values()}" optionValue="name" class="form-control"/>
        </div>
    </div>
    <div class="form-group">
        <label class="col-md-3 col-sm-4 col-xs-4 no-padding-right control-label text-right" >Ghi chú:</label>
        <div class="col-md-9 col-sm-8 col-xs-8">
            <textarea class="form-control" rows="2" name="room.note" placeholder="Ghi chú"></textarea>
        </div>
    </div>
    <div class="form-group pull-right">
        <div class="col-md-12 col-sm-12 col-xs-12">
            <button class="btn btn-default">Đăng kí</button>
        </div>
    </div>
    <div class="clearfix"></div>


</g:form>