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
    <title>Thêm thông tin nhân viên</title>

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
<h2>Thêm thông tin nhân viên</h2>

<p>
    <a href="/employee?action=employee">Trở về trang danh sách nhân viên</a>
</p>
<form method="post">
    <fieldset>
        <legend>Thông tin nhân viên</legend>
        <table>
<%--            <tr>--%>
<%--                <th>Mã nhân viên:</th>--%>
<%--                <td>--%>
<%--                    <input type="number" name="id" id="id" size="45"/>--%>
<%--                </td>--%>
<%--            </tr>--%>
            <th>Tên nhân viên:</th>
            <td>
                <input type="text" name="name" size="45"/>
            </td>
            </tr>
            <tr>
                <th>Ngày sinh:</th>
                <td>
                    <input type="date" name="dateOfBirth" size="45" />
                </td>
            </tr>
            <tr>
                <th>ID Card:</th>
                <td>
                    <input type="text" name="idCard" size="45"/>
                </td>
            </tr>
            <tr>
                <th>Lương:</th>
                <td>
                    <input type="number" name="salary" size="45"/>
                </td>
            </tr>
            <tr>
                <th>Số điện thoại:</th>
                <td>
                    <input type="number" name="phoneNumber" size="45"/>
                </td>
            </tr>
            <tr>
                <th>Email:</th>
                <td>
                    <input type="text" name="email" size="45"/>
                </td>
            </tr>
            <tr>
                <th>Địa chỉ:</th>
                <td>
                    <input type="text" name="address" size="15" />

                </td>
            </tr>
            <tr>
                <th>Vị trí:</th>
                <td>
                    <select name="positionId" id="positionId">
                        <option value="">Chọn chức danh</option>
                        <c:forEach var="item" items="${positionList}">
                            <option value="${item.id}">${item.name}</option>
                        </c:forEach>
                    </select>
                </td>
            </tr>
            <tr>
                <th>Chức vụ:</th>
                <td>
                    <select name="educationDegreeId" id="educationDegreeId">
                        <option value="">Chọn trình độ học vấn</option>
                        <c:forEach var="item" items="${educationDegreeList}">
                            <option value="${item.id}">${item.name}</option>
                        </c:forEach>
                    </select>
                </td>
            </tr>
            <tr>
                <th>Bộ phận:</th>
                <td>
                    <select name="divisionId" id="divisionId">
                        <option value="">Chọn trình phòng ban</option>
                        <c:forEach var="item" items="${divisionList}">
                            <option value="${item.id}">${item.name}</option>
                        </c:forEach>
                    </select>
                </td>
            </tr>
            <tr>
                <th>userName:</th>
                <td>
                    <select name="userName" id="userName">
                        <option value="">Chọn username</option>
                        <c:forEach var="item" items="${userList}">
                            <option value="${item.userName}">${item.userName}</option>
                        </c:forEach>
                    </select>
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
