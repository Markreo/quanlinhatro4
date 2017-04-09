<g:form controller="roomType" action="save" id="${type.id}" class="form-horizontal">
    <div class="form-group">
        <label class="col-md-2 col-sm-2 col-xs-2 control-label">
            Tên:
        </label>
        <div class="col-md-10 col-sm-10 col-xs-10">
            <input name="name" type="text" class="form-control" value="${type.name}"/>
        </div>
    </div>
    <div class="form-group">
        <div class="col-md-12 col-sm-12 col-xs-12" style="position: relative">
            <button type="submit" class="btn btn-default" style="position: absolute; right: 20px">Lưu</button>
            <br>
        </div>
    </div>
</g:form>