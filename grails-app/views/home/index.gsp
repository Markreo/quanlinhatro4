<%--
  Created by IntelliJ IDEA.
  User: giapn
  Date: 3/24/2017
  Time: 7:38 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Home page</title>
    <meta name="layout" content="main"/>
</head>

<body>
<ul>
    <li>Chuyển qua kiểu ajax</li>
    <li>Thêm model RoomType: xác định các loại phòng:<ul>
        <li>Thêm model trong mục setting của region</li>
        <li>thêm trường roomtype vào room, các giá trị được trong type được parse qua room</li>
        <li>vẫn edit được các giá trị</li>
        <li>Khi cập nhật loại phòng x -> hỏi có cập nhật lại tất cả những phòng có loại phòng x không -----</li>
    </ul> </li>
    <li>chuyển lại template form</li>
    <li>chức năng chuyển phòng</li>
    <li>người thuê -> chuyển phòng -> 'Dữ liệu phòng x mới thay đổi, đi đến phòng x?'</li>
    <li><strong>quá trình chuyển đổi dữ liệu từ DefaultRegion -> Use -> LeaseDetail (của báo cáo)</strong></li>
    <li>Domain Use: mỗi một mức currentValue có một currentPrice tương ứng =>
        <ul>
        <li>Tạo thêm domain Price(phạm vi giá trị từ x -> y, giá, thuộc về Use u)</li>
        <li>Tạo phòng => price lưu vào Price mặc định(phạm vi từ 0 -> 0, giá)</li>
        <li>Tạo thêm mức giá => show -> setting</li>
    </ul>
    </li>
    <li>input[rel='VND'], jquery and css:
        <ul>
        <li>text color: 'transparent' -> focus: #444</li>
        <li>change->parse value -> show</li>
    </ul>
    </li>
</ul>
</body>
</html>