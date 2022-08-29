<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 8/29/2022
  Time: 9:24 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Thêm nhân viên</title>

    <link rel="shortcut icon"
          href="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAIUAAACFCAMAAABCBMsOAAAAxlBMVEX////mfiK9w8fTVACVpab++vbaZBPTUQDXa0V/jI25wMTldQDmfR7WTgC2vcH29/eRqKvX293WWwru8PHo6uvGy86Rnp+IlpfebBfkeR/54dL88uvleA3M0dTngzLh5OV2hIWmsLP5597jlHPKTgrjmnzTVhe/fWDwwKWinJT328joiTvUXCHFcUv21L3DdFDxu5buq3zOYzTsoWm9g2ivkYCcoJ3Lajy6emXpj0jvs4vzybDplVfbbjvVXzLdgFbnqpLZc1TONrkyAAAEmElEQVR4nO2Za1vaMBSARy9k0qbUIlCEiqDzMoqXwZiCTv3/f2pJW8qlFE5CDvPZ+n7wA23K6zknJ0348qWgoKCg4P+jWuseB3VOcNytVf+KQzfQnEpFi6lUHC3oHlqhGjhzgQUVJzhkQKqBlnWIPLTDeXRzHOLUHCYvLBm5DhynfoBw1LYEYp6WGrbEyQ6FmBNcie6uQCThQC2OE5gE00BMShUqwcAr0TpcQqtjSRwLhEKrHONI1EQk0EojELQIMCRq21tmFgcjGIGghKYhBENkliZU1M9WoQmSWKifJsIOGkLPqMlYKF9cgcvYKsoXNcFmkVioniUiS8gC1YUh2rJinH/RoippobZvFRZLfIq6+CQWUhKaptiiLtU7VXctiYUdYWkH74dWLFTvFKsSEghbI5nlTP3OqCs+Vx31e2aZlCDsVYVnCcoeUXgpUb2IxAgGA2u7LBgLHAmxzqW8Y6UI5AQrHxzwfgDn2GAOcGlVvpjKaGBLgJKCmw6gxiEkdh9CIx8/z9l6rINwgLOJrtM4auStKdE19F9IzMA4Pz9iNHra+ntPXes1+KXzcyMwER36F5cTw2gexTR6yxFxYgVG0zAmlxd9JIf2tytKr13DMI7mNJsNo9frGY1mM/2MXXevKb361saQuKFU13VyyzUaiy9dhVkxiVvC7qT0RrnD94Glc0hoxGwQiRQ4IYnutQbflTqYU8su+dGz6dBIWSSimRowhjTy9Uu2NVVYpv0Xq8TwYo2oNPJhRRFJeHyI9aKsSu9YIDitKM46vd+m4d7T+LZWNMa27tRIPCQSTCPONx1O8jzcSZwOnbSSMbb1oELi0Sql+InGj9vNGu7tj0TCXwyyHveXGC1JpBqEXhtZD9e4piQjwTRGezqYqxKphk6uxhN3WcR1J+Or+UV/dZA12m+qjDqlNXw9gYbDnxP+7Rxj8nMY0vklf31QZ69oPFrrz2Ml6iX/McsL/XX/NB6Pn+5/UZp+6rWyg/apjYcNEoyynkIYlP9ZfFTeOEZ+ptxtluDh0HPYGIhYQ7JvtEt2zhOjtJCsAvEyFZFil+TW2LNMZa54lFdFmEI5Lw4RnTMZiZyiWBbxy16cG88r+1sVODKlcbpTIlHhwG61TkUlzOf8opDFfhZtXjfAUAhhCb59mR31oWDB6IgF42Hr/JCmI1SgbQsjFPxlQ6RpTDGqgmNNBUJxhhMKFowzeDBmWKFgwZiBLQZYoWDBGEAlTnEmSEwH2kCnqBbQ+tyyou+PXYJJ9PFqk2PBdmtIfXMOsH+OMBPCUgJ6H28jztPIYgBpXMhlASwMxMaZWEDaJ2q34IA6BsKr3ir2M8ACbT1NLQBbAvMAFoD3vk8Ri09SFy/oFi8Ai1d0i9fdEmYI3O9J0wp3t3Az9JAtvBAwR36vn40pxie/AXXxRlA1fELeABYzqpPt5yF70CoTnUJWs3ZIdOLtPhSRcfA99mxAcTLeaXJApJr4CIq+QyRYx6CZgzN1UEC3SHOCJhGCfzDph1jREJBgvOs0OtJVCnvku4ADz8rs4uOrWj4uZjIHr6ZaJAwKCgoKCvL5A7MydgFh50o7AAAAAElFTkSuQmCC">
    <title>Thêm thông tin nhân viên</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.2/css/all.min.css">
    <link rel="stylesheet" href="../../../bootstrap-5.0.2-dist/css/bootstrap.css">
    <style>
        a {
            text-decoration: none;
        }

        a:hover {
            text-decoration: underline;
            color: blue;
        }

        body {
            background-color: #e3e3ff;
            font-family: Arial, sans-serif
        }

    </style>
</head>
<body>
<center>
    <h3>Thông tin nhân viên</h3>

</center>
<div align="center">
    <form method="post">
        <table border="1" cellpadding="5">
            <tr>
                <th>Tên nhân viên:</th>
                <td>
                    <input type="text" name="name" id="name" size="45"/>
                </td>
            </tr>
            <tr>
                <th>Ngày sinh:</th>
                <td>
                    <input type="text" name="dateofbirth" id="dateofbirth" size="45"/>
                </td>
            </tr>

            <tr>
                <th>ID Card:</th>
                <td>
                    <input type="text" name="idcard" id="idcard" size="45"/>
                </td>
            </tr>

            <tr>
                <th>Lương:</th>
                <td>
                    <input type="text" name="salary" id="salary" size="45"/>
                </td>
            </tr>



            <tr>
                <th>Số điện thoại:</th>
                <td>
                    <input type="text" name="phone" id="phone" size="45"/>
                </td>
            </tr>

            <tr>
                <th>Email:</th>
                <td>
                    <input type="text" name="email" id="email" size="45"/>
                </td>
            </tr>
            <tr>
                <th>Địa chỉ:</th>
                <td>
                    <select name="address" id="address" class="form-select form-select-sm" aria-label=".form-select-sm example">
                        <option>--- Chọn thành phố ---</option>
                        <option value="Đà Nẵng">Đà Nẵng</option>
                        <option value="Quảng Nam">Quảng Nam</option>
                        <option value="Hà Lụi">Hà Lụi</option>
                        <option value="Huế">Huế</option>
                        <option value="TP.Hồ Chí Minh">TP.Hồ Chí Minh</option>
                        <option value="Huế">Huế</option>
                        <option value="Quảng Ngãi">Quảng Ngãi</option>
                        <option value="Bình Định">Bình Định</option>
                        <option value="Gia Lai">Gia Lai</option>
                        <option value="Quảng Bình">Quảng Bình</option>
                        <option value="Đắk Lắk">Đắk Lắk</option>
                        <option value="Cà Mau">Cà Mau</option>
                        <option value="Hà Giang">Hà Giang</option>
                    </select>
                    <%--                    <input type="text" name="country" id="country" size="15"/>--%>
                </td>

            </tr>
            <tr>
                <td colspan="2" align="center">
                    <input type="submit" value="Save"/>
                </td>
            </tr>

        </table>
    </form>
</div>
</body>
</html>
