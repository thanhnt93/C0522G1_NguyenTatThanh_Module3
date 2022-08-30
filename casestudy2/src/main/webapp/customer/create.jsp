<%--
Created by IntelliJ IDEA.
User: TechCare
Date: 6/28/2022
Time: 5:18 PM
To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Thêm thông tin khách hàng</title>

    <style>
        body {
            background-color: #e3e3ff;
            font-family: Arial, sans-serif
        }

        a{
            text-decoration: none;
        }

        a:hover {
            text-decoration: underline;
            color: blue;
        }
    </style>
</head>
<body>
<h2>Thêm thông tin khách hàng</h2>

<p>
    <a href="/customer?action=customer">Trở về trang danh sách khách hàng</a>
</p>
<form method="post">
    <fieldset>
        <legend>Thông tin khách hàng</legend>
        <table>
            <tr>
                <td>Mã loại khách:</td>

                <td>
                    <select name="customerTypeId" id="customerTypeId" style="width: 337px">
                        <option value="">Chọn kiểu khách</option>
                        <c:forEach var="item" items="${customerTypeList}">
                            <option value="${item.id}">${item.name}</option>
                        </c:forEach>
                    </select>

                </td>
            </tr>

            <tr>
                <td>Tên khách hàng:</td>
                <td>
                    <input type="text" name="name" id="name" size="45"/>
                </td>
            </tr>
            <tr>
                <td>Ngày sinh:</td>
                <td>
                    <input type="date" name="dateOfBirth" id="dateOfBirth" size="45"/>
                </td>
            </tr>

            <tr>
                <td>Giới tính:</td>
                <td>
                    <input type="number" name="gender" id="gender" size="45"/>
                </td>
            </tr>

            <tr>
                <td>ID Card:</td>
                <td>
                    <input type="text" name="idCard" id="idCard" size="45"/>
                </td>
            </tr>



            <tr>
                <td>Số điện thoại:</td>
                <td>
                    <input type="text" name="phoneNumber" id="phoneNumber" size="45"/>
                </td>
            </tr>

            <tr>
                <td>Email:</td>
                <td>
                    <input type="text" name="email" id="email" size="45"/>
                </td>
            </tr>
            <tr>
                <td>Địa chỉ:</td>
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
                <td></td>
                <td>
                    <input type="submit" value="Save"/>
                </td>
            </tr>

        </table>
        </table>
    </fieldset>
</form>
</body>
</html>
