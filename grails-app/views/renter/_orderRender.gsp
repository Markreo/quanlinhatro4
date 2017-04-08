<g:set var="renters" value="${room.renter}"/>
<g:if test="${renters}">
    <div class="orders-container">
        <div class="orders-header">
            <h6>
                Khách thuê phòng
                <g:if test="${renters.size()}">
                    (${renters.size()})
                </g:if>
            </h6>
        </div>
        <ul class="orders-list">
            <g:each in="${renters}" var="renter">
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
</g:if>
