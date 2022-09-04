<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 8/23/2022
  Time: 2:47 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Furama</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.2/css/all.min.css">
    <style>
        .hdtext {
            font-size: 12px;
        }

        a {
            text-decoration: none;
        }
    </style>
</head>
<body>
<div class="container-fluid">
<nav class="navbar bg-light">
    <div class="container-fluid">
        <a class="navbar-brand"><img style="width: 100px"
                                     src="data:image/jpeg;base64,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"></a>
        <div class="hdtext">
            <span><i class="fa-solid fa-location-dot"></i> 103 – 105 Đường Võ Nguyên Giáp, Phường Khuê Mỹ, </span><br>
            <span>&nbsp;&nbsp;&nbsp;&nbsp;Quận Ngũ hành Sơn, Tp. Đà Nẵng, Việt Nam </span><br><br>
            <span>&nbsp;&nbsp;&nbsp;&nbsp;7.0 km từ Sân bay Quốc tế Đà Nẵng</span>
        </div>

        <div class="" style="transform: translateY(-30%)">
            <span class="hdtext"><i class="fa-solid fa-phone"></i> 84-236-3847 333/888</span><br>
            <span class="hdtext"><i class="fa-solid fa-envelope"></i> reservation@furamavietnam.com</span>
        </div>

        <span class="navbar-text">
        Nguyễn Tất Thành
      </span>
    </div>
</nav>
<nav class="navbar navbar-expand-lg bg-secondary">
    <div class="container-fluid">
        <div class="btn-group">
            <button class="btn btn-secondary dropdown-toggle" type="button" id="defaultDropdown"
                    data-bs-toggle="dropdown" data-bs-auto-close="true" aria-expanded="false">
                Home
            </button>
            <ul class="dropdown-menu" aria-labelledby="defaultDropdown">
                <li><a class="dropdown-item" href="#">Menu item</a></li>
                <li><a class="dropdown-item" href="#">Menu item</a></li>
                <li><a class="dropdown-item" href="#">Menu item</a></li>
            </ul>
        </div>

        <div class="btn-group">

                <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuClickableOutside"
                        data-bs-toggle="dropdown" data-bs-auto-close="inside" aria-expanded="false">
                    Employee
                </button>

            <ul class="dropdown-menu" aria-labelledby="dropdownMenuClickable">
                <li><a class="dropdown-item" href="/employee">List of employee</a></li>
                <li><a class="dropdown-item" href="/employee?action=create">Add new staff</a></li>
            </ul>

        </div>
        <div class="btn-group">

                <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuClickableInside"
                        data-bs-toggle="dropdown" data-bs-auto-close="outside" aria-expanded="false">
                    Customer
                </button>

            <ul class="dropdown-menu" aria-labelledby="dropdownMenuClickable">
                <li><a class="dropdown-item" href="/customer">List of employee</a></li>
                <li><a class="dropdown-item" href="/customer?action=create">Add new customers</a></li>
            </ul>

        </div>

        <div class="btn-group">
            <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuClickable"
                    data-bs-toggle="dropdown" data-bs-auto-close="false" aria-expanded="false">
                Service
            </button>
            <ul class="dropdown-menu" aria-labelledby="dropdownMenuClickable">
                <li><a class="dropdown-item" href="#">Menu item</a></li>
                <li><a class="dropdown-item" href="#">Menu item</a></li>
                <li><a class="dropdown-item" href="#">Menu item</a></li>
            </ul>
        </div>
        <div class="btn-group">
            <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuClickables"
                    data-bs-toggle="dropdown" data-bs-auto-close="false" aria-expanded="false">
                Contract
            </button>
            <ul class="dropdown-menu" aria-labelledby="dropdownMenuClickable">
                <li><a class="dropdown-item" href="#">Menu item</a></li>
                <li><a class="dropdown-item" href="#">Menu item</a></li>
                <li><a class="dropdown-item" href="#">Menu item</a></li>
            </ul>
        </div>
        <form class="d-flex" role="search">
            <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
            <button class="btn btn-outline-success text" type="submit">Search</button>
        </form>
    </div>
</nav>
<div class="container-fluid" style="border: #4C5B5C solid 1px">
    <div class="row" style="height: 700px">
        <div class="col-lg-2" style="border: #4C5B5C solid 1px">
            <a href="#"><p>Item One</p></a>
            <a href="#"><p>Item Two</p></a>
            <a href="#"><p>Item Three</p></a>
        </div>
        <div class="col-lg-10" style="border: #4C5B5C solid 1px">

<%--            <iframe width="100%" height="100%" src="https://www.youtube.com/embed/L5B05GaZsy4"--%>
<%--                    title="Biệt thự nghỉ dưỡng FURAMA RESORT DANANG - Ngũ Hành Sơn, Đà Nẵng" frameborder="0"--%>
<%--                    allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"--%>
<%--                    allowfullscreen></iframe>--%>
<%--            <video class="img-fluid" autoplay muted>--%>
<%--                <source type="video/mp4"--%>
<%--                        src="https://eus-streaming-video-rt-microsoft-com.akamaized.net/bd1eda48-4f5b-42f7-9ffd-bf10c7593861/3b66781f-b1b7-41ec-84ff-abbc209f2520.mp4">--%>
<%--            </video>--%>
        <img style="width: 100%; height: 100%" src="https://furamavietnam.com/wp-content/uploads/2018/07/Vietnam_Danang_Furama_Resort_Exterior-Furama-girl-with-pink-hat.jpg">
<%--    <%@include file="customer/list.jsp" %>--%>
        </div>

    </div>
</div>

<div class="row bg-light" style="height: 100px;display: flex; align-items: center">
    <p style="text-align: center" style="border: #4C5B5C solid 1px">Footer</p>
</div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>
</body>
</html>
