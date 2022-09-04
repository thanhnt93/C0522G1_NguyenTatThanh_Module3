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
    <title>Chỉnh sửa nhân viên</title>

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
<h2>Chỉnh sửa thông tin nhân viên</h2>

<p>
    <a href="/employee?action=employee">Trở về trang danh sách nhân viên</a>
</p>
<form method="post" action="/employee?action=edit">
    <fieldset>
        <legend>Thông tin nhân viên</legend>
        <table>
            <c:if test="${employee != null}">
                <input type="hidden" name="id" value="${employee.id}"/>
            </c:if>

            <tr>
                <th>Tên nhân viên:</th>
                <td>
                    <input type="text" name="name" size="45"
                           value="${employee.name}"
                    />
                </td>
            </tr>
            <tr>
                <th>Ngày sinh:</th>
                <td>
                    <input type="date" name="dateOfBirth" size="45"
                           value="${employee.dateOfBirth}"
                    />
                </td>
            </tr>
            <tr>
                <th>ID Card:</th>
                <td>
                    <input type="text" name="idCard" size="45"
                           value="<c:out value='${employee.idCard}' />"
                    />
                </td>
            </tr>
            <tr>
                <th>Lương:</th>
                <td>
                    <input type="number" name="salary" size="45"
                           value="${employee.salary}"
                    />
                </td>
            </tr>
            <tr>
                <th>Số điện thoại: </th>
                <td>
                    <input type="number" name="phoneNumber" size="45"
                           value="<c:out value='${employee.phoneNumber}' />"
                    />
                </td>
            </tr>
            <tr>
                <th>Email:</th>
                <td>
                    <input type="text" name="email" size="45"
                           value="<c:out value='${employee.email}' />"
                    />
                </td>
            </tr>
            <tr>
                <th>Địa chỉ:</th>
                <td>
                    <input type="text" name="address" size="15"
                           value="<c:out value='${employee.address}' />"
                    />
                </td>
            </tr>
            <tr>
                <th>Vị trí:</th>
                <td>
                    <select name="positionId" id="positionId">
                        <option value="">Chọn chức danh</option>
                        <c:forEach var="item" items="${positionList}">
                            <c:if test="${item.id == employee.positionId}">
                                <option value="${item.id}" selected>${item.name}</option>
                            </c:if>
                            <c:if test="${item.id != employee.positionId}">
                                <option value="${item.id}">${item.name}</option>
                            </c:if>
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
                            <c:if test="${item.id == employee.educationDegreeId}">
                                <option value="${item.id}" selected>${item.name}</option>
                            </c:if>
                            <c:if test="${item.id != employee.educationDegreeId}">
                                <option value="${item.id}">${item.name}</option>
                            </c:if>
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
                            <c:if test="${item.id == employee.divisionId}">
                                <option value="${item.id}" selected>${item.name}</option>
                            </c:if>
                            <c:if test="${item.id != employee.divisionId}">
                                <option value="${item.id}">${item.name}</option>
                            </c:if>

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
                            <c:if test="${item.userName == employee.userName}">
                                <option value="${item.userName}" selected>${item.userName}</option>
                            </c:if>
                            <c:if test="${item.userName != employee.userName}">
                                <option value="${item.userName}">${item.userName}</option>
                            </c:if>

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
