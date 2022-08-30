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
    <title>Chỉnh sửa khách hàng</title>

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
<h2>Chỉnh sửa thông tin khách hàng</h2>

<p>
    <a href="/customer?action=customer">Trở về trang danh sách khách hàng</a>
</p>
<form method="post" action="/customer?action=edit">
    <fieldset>
        <legend>Thông tin khách hàng</legend>
        <table>
            <c:if test="${customer != null}">
                <input type="hidden" name="id" value="${customer.id}"/>
            </c:if>
            <c:if test="${customer != null}">
                <input type="hidden" name="customerTypeId" value="${customer.customerTypeId}"/>
            </c:if>
            <tr>
                <td>Tên khách hàng:</td>
                <td>
                    <input type="text" name="name" size="45"
                           value="${customer.name}"
                    />
                </td>
            </tr>
            <tr>
                <td>Ngày sinh:</td>
                <td>
                    <input type="date" name="dateOfBirth" size="45"
                           value="${customer.dateOfBirth}"
                    />
                </td>
            </tr>
            <tr>
                <td>Giới tính:</td>
                <td>
                    <input type="number" name="gender" size="45"
                           value="${customer.gender}"
                    />
                </td>
            </tr>
            <tr>
                <td>Id Card:</td>
                <td>
                    <input type="number" name="idCard" size="45"
                           value="${customer.idCard}"
                    />
                </td>
            </tr>
            <tr>
                <td>Số điện thoại:</td>
                <td>
                    <input type="number" name="phoneNumber" size="45"
                           value="${customer.phoneNumber}"
                    />
                </td>
            </tr>
            <tr>
                <td>Email:</td>
                <td>
                    <input type="text" name="email" size="45"
                           value="${customer.email}"
                    />
                </td>
            </tr>
            <tr>
                <td>Địa chỉ:</td>
                <td>
                    <input type="text" name="address" size="15"
                           value="${customer.address}"
                    />
                </td>
            </tr>
            <tr>
                <td></td>
                <td>
                    <input type="submit" value="Save"/>
                </td>
            </tr>
        </table>
    </fieldset>
</form>
</body>
</html>
