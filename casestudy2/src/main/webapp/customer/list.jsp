<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 8/29/2022
  Time: 9:28 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Danh sách khách hàng</title>

    <link rel="shortcut icon"
          href="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAIUAAACFCAMAAABCBMsOAAAAxlBMVEX////mfiK9w8fTVACVpab++vbaZBPTUQDXa0V/jI25wMTldQDmfR7WTgC2vcH29/eRqKvX293WWwru8PHo6uvGy86Rnp+IlpfebBfkeR/54dL88uvleA3M0dTngzLh5OV2hIWmsLP5597jlHPKTgrjmnzTVhe/fWDwwKWinJT328joiTvUXCHFcUv21L3DdFDxu5buq3zOYzTsoWm9g2ivkYCcoJ3Lajy6emXpj0jvs4vzybDplVfbbjvVXzLdgFbnqpLZc1TONrkyAAAEmElEQVR4nO2Za1vaMBSARy9k0qbUIlCEiqDzMoqXwZiCTv3/f2pJW8qlFE5CDvPZ+n7wA23K6zknJ0348qWgoKCg4P+jWuseB3VOcNytVf+KQzfQnEpFi6lUHC3oHlqhGjhzgQUVJzhkQKqBlnWIPLTDeXRzHOLUHCYvLBm5DhynfoBw1LYEYp6WGrbEyQ6FmBNcie6uQCThQC2OE5gE00BMShUqwcAr0TpcQqtjSRwLhEKrHONI1EQk0EojELQIMCRq21tmFgcjGIGghKYhBENkliZU1M9WoQmSWKifJsIOGkLPqMlYKF9cgcvYKsoXNcFmkVioniUiS8gC1YUh2rJinH/RoippobZvFRZLfIq6+CQWUhKaptiiLtU7VXctiYUdYWkH74dWLFTvFKsSEghbI5nlTP3OqCs+Vx31e2aZlCDsVYVnCcoeUXgpUb2IxAgGA2u7LBgLHAmxzqW8Y6UI5AQrHxzwfgDn2GAOcGlVvpjKaGBLgJKCmw6gxiEkdh9CIx8/z9l6rINwgLOJrtM4auStKdE19F9IzMA4Pz9iNHra+ntPXes1+KXzcyMwER36F5cTw2gexTR6yxFxYgVG0zAmlxd9JIf2tytKr13DMI7mNJsNo9frGY1mM/2MXXevKb361saQuKFU13VyyzUaiy9dhVkxiVvC7qT0RrnD94Glc0hoxGwQiRQ4IYnutQbflTqYU8su+dGz6dBIWSSimRowhjTy9Uu2NVVYpv0Xq8TwYo2oNPJhRRFJeHyI9aKsSu9YIDitKM46vd+m4d7T+LZWNMa27tRIPCQSTCPONx1O8jzcSZwOnbSSMbb1oELi0Sql+InGj9vNGu7tj0TCXwyyHveXGC1JpBqEXhtZD9e4piQjwTRGezqYqxKphk6uxhN3WcR1J+Or+UV/dZA12m+qjDqlNXw9gYbDnxP+7Rxj8nMY0vklf31QZ69oPFrrz2Ml6iX/McsL/XX/NB6Pn+5/UZp+6rWyg/apjYcNEoyynkIYlP9ZfFTeOEZ+ptxtluDh0HPYGIhYQ7JvtEt2zhOjtJCsAvEyFZFil+TW2LNMZa54lFdFmEI5Lw4RnTMZiZyiWBbxy16cG88r+1sVODKlcbpTIlHhwG61TkUlzOf8opDFfhZtXjfAUAhhCb59mR31oWDB6IgF42Hr/JCmI1SgbQsjFPxlQ6RpTDGqgmNNBUJxhhMKFowzeDBmWKFgwZiBLQZYoWDBGEAlTnEmSEwH2kCnqBbQ+tyyou+PXYJJ9PFqk2PBdmtIfXMOsH+OMBPCUgJ6H28jztPIYgBpXMhlASwMxMaZWEDaJ2q34IA6BsKr3ir2M8ACbT1NLQBbAvMAFoD3vk8Ri09SFy/oFi8Ai1d0i9fdEmYI3O9J0wp3t3Az9JAtvBAwR36vn40pxie/AXXxRlA1fELeABYzqpPt5yF70CoTnUJWs3ZIdOLtPhSRcfA99mxAcTLeaXJApJr4CIq+QyRYx6CZgzN1UEC3SHOCJhGCfzDph1jREJBgvOs0OtJVCnvku4ADz8rs4uOrWj4uZjIHr6ZaJAwKCgoKCvL5A7MydgFh50o7AAAAAElFTkSuQmCC">
    <title>Danh sách người dùng</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.2/css/all.min.css">
    <link rel="stylesheet" href="../../../bootstrap-5.0.2-dist/css/bootstrap.css">

    <style>
        td {
            text-align: center;
        }

        th {
            text-align: center;
        }

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
    <h3>Danh sách khách hàng</h3>
    <a href="/">Trở về trang chủ</a>
    <form action="/customer?action=search">
        <input type="text" name="customerSearch" placeholder="Nhập tên khách hàng" style="width: 500px">
        <input type="submit" name="action" value="search">

    </form>

    <c:if test=" ${mess != null}">
        <span>${mess}</span>
    </c:if>

</center>
<div align="center">

    <table class="table table-striped">

        <tr>
            <th>Tên khách hàng</th>
            <th>Giới tính</th>
            <th>Ngày sinh</th>
            <th>ID card</th>
            <th>Số điện thoại</th>
            <th>Email</th>
            <th>Địa chỉ</th>
            <th>Actions</th>
            <th>Actions</th>

        </tr>
        <c:forEach var="customer" items="${customerList}">
            <tr>
<%--                <td><c:out value="${customer.id}"/></td>--%>
<%--                <c:forEach var="customerType" items="${customerTypeList}">--%>
<%--                    <c:if test="${customerType.id == customer.customerTypeId}">--%>
<%--                        <td><c:out value="${customerType.name}"/></td>--%>
<%--                    </c:if>--%>
<%--                </c:forEach>--%>
                <c:if test="${customer.isDelete == 0}">
                <td><c:out value="${customer.name}"/></td>
                    <c:if test="${customer.gender == 1}">
                       <td>Nam</td>
                    </c:if>
                    <c:if test="${customer.gender == 0}">
                        <td>Nữ</td>
                    </c:if>
<%--                <td><c:out value="${customer.gender}"/></td>--%>
                <td><c:out value="${customer.dateOfBirth}"/></td>
                <td><c:out value="${customer.idCard}"/></td>
                <td><c:out value="${customer.phoneNumber}"/></td>
                <td><c:out value="${customer.email}"/></td>
                <td><c:out value="${customer.address}"/></td>

                <td>
                    <a href="/customer?action=edit&id=${customer.id}"><i class="fa-solid fa-file-pen"></i></a>
                </td>
                <td>
                    <!-- Button trigger modal -->
                    <button type="button" class="btn btn-secondary" data-bs-toggle="modal"
                            onclick="objdelete('${customer.id}' ,'${customer.name}')"
                            data-bs-target="#exampleModal" >
                        <i class="fa-solid fa-trash-can"></i>
                    </button>
                </td>
                </c:if>
            </tr>
        </c:forEach>
    </table>
</div>

<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <form action="/customer " method="post">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Thông báo</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <input type="text" hidden name="id" id="idDelete">
                    <input type="text" hidden name="action" value="delete">
                    <span> Bạn có muốn xóa : </span>
                    <span id="nameDelete"> </span>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">No</button>
                    <button type="submit" class="btn btn-primary">Yes</button>
                </div>
            </div>
        </form>
    </div>
</div>
<script>
    function objdelete(id, name) {
        document.getElementById("idDelete").value = id;
        document.getElementById("nameDelete").innerText = name;
    }
</script>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>
</body>
</html>
