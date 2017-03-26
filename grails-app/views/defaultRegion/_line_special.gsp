<g:if test="${special == 'tiendien'}">
    <div class="form-group">
        <div class="row">
            <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="col-md-2 col-sm-2 hidden-xs"></div>
                <div class="col-md-3 col-sm-3 col-xs-4 no-padding-right">
                    <input class="form-control" name="default.name" type="text" value="Tiền điện" readonly/>
                </div>
                <div class="col-md-3 col-sm-3 col-xs-3 no-padding-right">
                    <g:hiddenField name="special" value="tiendien"/>
                    <select class="form-control" name="default.unit">
                        <option value="${com.quanlinhatro.Unit.KG}">Kilowatt</option>
                        <option value="${com.quanlinhatro.Unit.NG}">Người</option>
                    </select>
                </div>
                <div class="col-md-3 col-sm-3 col-xs-3 no-padding-right">
                    <input class="form-control" name="default.currentPrice" type="text" placeholder="Tiền điện"/>
                </div>
                <div class="col-md-1 col-sm-1 col-xs-1 no">
                    <button rel="remove" class="btn btn-xs btn-danger" style="border-radius: 50%; padding: 0 5px; margin-top:5px"><i class="icon-minus"></i></button>
                </div>
            </div>
        </div>
    </div>
</g:if>
<g:if test="${special == 'tiennuoc'}">
    <div class="form-group">
        <div class="row">
            <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="col-md-2 col-sm-2 hidden-xs"></div>
                <div class="col-md-3 col-sm-3 col-xs-4 no-padding-right">
                    <input class="form-control" name="default.name" type="text" value="Tiền nước" readonly/>
                </div>
                <div class="col-md-3 col-sm-3 col-xs-3 no-padding-right">
                    <g:hiddenField name="special" value="tiennuoc"/>
                    <select class="form-control" name="default.unit">
                        <option value="${com.quanlinhatro.Unit.M3}">m&sup3;</option>
                        <option value="${com.quanlinhatro.Unit.NG}">Người</option>
                    </select>
                </div>
                <div class="col-md-3 col-sm-3 col-xs-3 no-padding-right">
                    <input class="form-control" name="default.currentPrice" type="text"  placeholder="Tiền nước"/>
                </div>
                <div class="col-md-1 col-sm-1 col-xs-1 no">
                    <button rel="remove" class="btn btn-xs btn-danger" style="border-radius: 50%; padding: 0 5px; margin-top:5px"><i class="icon-minus"></i></button>
                </div>
            </div>
        </div>
    </div>
</g:if>
<g:if test="${special == 'tienphong'}">
    <div class="form-group">
        <div class="row">
            <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="col-md-2 col-sm-2 hidden-xs"></div>
                <div class="col-md-3 col-sm-3 col-xs-4 no-padding-right">
                    <input class="form-control" name="default.name" type="text" value="Tiền phòng" readonly/>
                </div>
                <div class="col-md-3 col-sm-3 col-xs-3 no-padding-right">
                    <g:hiddenField name="special" value="tienphong"/>
                    <select class="form-control" name="default.unit">
                        <option value="${com.quanlinhatro.Unit.PHONG}">Phòng</option>
                        <option value="${com.quanlinhatro.Unit.NG}">Người</option>
                    </select>
                </div>

                <div class="col-md-3 col-sm-3 col-xs-3 no-padding-right">
                    <input class="form-control" name="default.currentPrice" type="text" placeholder="Tiền phòng"/>
                </div>
                <div class="col-md-1 col-sm-1 col-xs-1 no">
                    <button rel="remove" class="btn btn-xs btn-danger" style="border-radius: 50%; padding: 0 5px; margin-top:5px"><i class="icon-minus"></i></button>
                </div>
            </div>
        </div>
    </div>
</g:if>
<g:if test="${special == 'null'}">
    <div class="form-group">
        <div class="row">
            <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="col-md-2 col-sm-2 hidden-xs"></div>
                <div class="col-md-3 col-sm-3 col-xs-4 no-padding-right">
                    <input class="form-control" name="default.name" type="text" value="${df?.name}" placeholder="Tên"/>
                </div>
                <div class="col-md-3 col-sm-3 col-xs-3 no-padding-right">
                    <g:hiddenField name="special" value="null"/>
                    <g:select name="default.unit" from="${com.quanlinhatro.Unit.values()}" optionValue="name" value="${df?.unit}" class="form-control"/>
                </div>
                <div class="col-md-3 col-sm-3 col-xs-3 no-padding-right">
                    <input class="form-control" name="default.currentPrice" type="text" value="${df.currentPrice}" placeholder="Giá" data-mask="(999) 999-9999"/>
                </div>
                <div class="col-md-1 col-sm-1 col-xs-1 no">
                    <button rel="remove" class="btn btn-xs btn-danger" style="border-radius: 50%; padding: 0 5px; margin-top:5px"><i class="icon-minus"></i></button>
                </div>
            </div>
        </div>
    </div>
</g:if>