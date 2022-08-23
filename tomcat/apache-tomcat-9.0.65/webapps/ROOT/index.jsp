<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 8/23/2022
  Time: 10:13 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>
  </head>
  <body>
  <form action="/display-discount" method="get">
    <label>Mô tả sản phẩm: </label>
    <input type="text" name="productDescription" placeholder="Mô tả sản phẩm">
    <br><br>
    <label>Giá niêm yết sản phẩm: </label>
    <input type="number" name="listPrice" placeholder="Nhập giá niêm yết">
    <br><br>
    <label>Tỷ lệ chiết khấu: </label>
    <input type="number" name="discountPercent" placeholder="Nhập tỉ lệ chiết khấu">
    <br><br>
    <button type="submit">Sumbit</button>
  </form>
  </body>
</html>
