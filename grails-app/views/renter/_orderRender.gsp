<div class="orders-container">
    <div class="orders-header">
        <h6>
            Khách thuê phòng(1)
            <g:if test="${room.renter.size()}">
                (room.renter.size())
            </g:if>
        </h6>
    </div>
    <ul class="orders-list">
        <li class="order-item">
            <div class="row">
                <div class="col-lg-8 col-md-8 col-sm-8 col-xs-8 item-left">
                    <div class="item-booker">Nguyễn Văn Giáp - Nam</div>
                    <div class="item-time">
                        <i class="fa fa-calendar"></i>
                        <span>10/5/1994 - Bình Phước</span>

                    </div>
                    <div class="item-time">
                        <i class="fa fa-calendar"></i>
                        <span>01676112012</span>
                    </div>
                </div>
            </div>
            <a class="item-more" href="">
                <i class="icon-angle-right"></i>
            </a>
        </li>

        <g:each in="${room.renter}" var="renter">
            <li class="order-item">
                <div class="row">
                    <div class="col-lg-8 col-md-8 col-sm-8 col-xs-8 item-left">
                        <div class="item-booker">${renter.fullname}</div>
                        <div class="item-time">
                            <i class="fa fa-calendar"></i>
                            <span>10 minutes ago</span>
                        </div>
                    </div>
                </div>
                <a class="item-more" href="">
                    <i class="icon-angle-right"></i>
                </a>
            </li>
        </g:each>

    </ul>
</div>