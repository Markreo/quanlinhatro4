<g:if test="${room.status == com.quanlinhatro.Room.Status.TRONG}">
    <tr>
        <td><img src="${resource(file: 'images/home_1.png')}" width="38px" height="38px"/> </td>
        <td><a href="${createLink(controller: 'room', action: 'show', id: room.id)}">Phòng ${room.name} - ${room.status.name}</a></td>
        <td> <i class="icon-money"></i> ${room.price}</td>
        <td colspan="2">${room.note}</td>
        <td>Cho thuê <a class="btn btn-xs btn-success"><i class="icon-check"></i></a></td>
    </tr>
</g:if>
<g:if test="${room.status == com.quanlinhatro.Room.Status.DANGTHUE}">
    <tr>
        <td><img src="${resource(file: 'images/home_1.png')}" width="38px" height="38px"/> </td>
        <td><a href="${createLink(controller: 'room', action: 'show', id: room.id)}">Phòng ${room.name} - ${room.status.name}</a></td>
        <td><i class="icon-user"></i> ${room.renter.size()} người đang thuê</td>
        <td>Tạm tính: 2,200,000đ</td>
        <td>Hạn thanh toán: 30/3</td>
        <td>Cập nhật<a class="btn btn-xs btn-success"><i class="icon-check"></i></a></td>
    </tr>
</g:if>