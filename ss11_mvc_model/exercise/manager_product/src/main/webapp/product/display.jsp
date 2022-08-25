<%--
  Created by IntelliJ IDEA.
  User: TechCare
  Date: 6/28/2022
  Time: 5:18 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <link rel="shortcut icon" href="data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAoHCA8PDw8PDw8SDw8PEA8PDxEPDxEPDw8PGBQZGRkUGRkcITwoHB8rIxgYJjgmKy8xNTU1GiVIQDs1QC40Qz8BDAwMEA8QHxISHzQrJCw4NDc/PDU2MTExPT89NDQ0MT83PTQ0NDQ9NDQ0MTQ0NDQxPzQ0NDQ+NDE0NjY0NDQ0NP/AABEIAOEA4QMBIgACEQEDEQH/xAAcAAEBAQADAQEBAAAAAAAAAAAAAQcEBQYDCAL/xABLEAABAwIDAwYHCgwGAwAAAAAAAQIDBBEFBiEHEjETQVFVlNIUFhciYXHTFTI1cnOBkZKxsyMzNDZSU2J0k5Wy0UJUgoOhwiQltP/EABkBAQADAQEAAAAAAAAAAAAAAAABAgMEBf/EACgRAQEAAgEDAwMEAwAAAAAAAAABAhEDBBIxEyFRMjNBYXGBkRQiUv/aAAwDAQACEQMRAD8A2UFAEBSAAUgAAAAAAAAAAAAAAAAAAAAAAKCAUEKBCgAQFAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABQQACkAApABSAAUgAFBAAKQAUEAApABSAAUgAApABSAAUEAAAAUEAAAAUgAAh0OeKyWnwqunherJY4HKxyWux3C6enUxXAaLMWIQJUQYvO1iucxEkxCrR128dEuTjLldRFsnl+iQfmvCZMfq6yeiixWqSan5XlFfX1SM8x6MWyoqquqpzHe+LOaOuJP5lWf2JmGV8RFyk81u4Mi2N4vXS1eIU1XVy1KQsaqctK+bdej1aqtc/VE9B5XDH49i9XWtpsUnjWGRznNdWVEEaNc9yIjWs0RNOFkKWyTdWnu/Q4MP8AFDNXXL/5nW90eJ+a+uH/AMyrf7GfrcfzFu2/DcCmEZaqsYoswUlBW4hNUI9fwjXVM08LmOjc5NH8+ia2N2NJZZuKhSAkUgAFBABQQAUEAFIABQQAUEAFBABSAAea2jfAuJfu7vtQ8Rsr+CmfLz/ah7faN8C4l+7u+1DEMr5wraKlbTwUSTxo97kerJXKqu4p5uhrw2TLdZ8ktmo9DkqgnZjuJyPhexn/AJSb7mOa1VdUNc2yrxuiKqW5jSEMu8ouJ9Wt/h1ATaLifVrf4dQb45yTXv8A0yywyyu3abGPhbF/iu+/U+OyH8uxf1t+9eXYdK5+I4k9zd1z4ke5NdFWW6pr6ybIfy3F/W37155vU/bydeHmNWM4xrKWKTY0lbE9Eo/CKSTd5dWrybGxo/zeH+F2nOaOZtjeSa6oxtMQY+LwdKmjl3XSOSTcjbGjtN21/NW2p5vT5ayvvJ7flrlHGr/z0o/VD9w42kxav/PSj9UP3DjaT1OL7c/ZjfNUAGiAAACkAApAAAAApAAAAFBABSAoEAAHn89Usk+E18UTFkkfA9GMaiuc5eNkTnXTgYThMmN0cKQR4XO5iOc676KqV1148LH6AzRibqKgq6tjUe6CF0jWuvuq5OF7c11MhpdqOYZmb8NBDKy6pvx0dU9t04pdH2LY53C7l0iyXy6r3Xx7qqTsNX/ce6+PdVSdhq/7ndeUjM/VbOwVffHlIzP1WzsFX3y/+Rn/ANI7cXN2L4XWRVdfPU0s1OkkbURZYZIUc9Xq5UbvJrwX1adJ5fCpMbwirrXU+FyyLNI5rllo6mRlmyOVFarFRFRb8bqimibMs81mLT1UFZFFGsDGvasLHsVF3la5rkc5fR0cFPJVW1rF1nmZT0tM5kcj2oiQTyPRqOVE3lR+q6cbJ6jHKS+18Lzf4Xx4zN1On8vru+PHnMvU6fy+u758/Krj/wDkYOyVPtD5Q7XcbkvydLSybtt7cp6h1r8L2k04GXo8XxE7yf3ltmK12YqOuq8Plg3V/CO8GnhhY1kTmoqq+9ubn4qbwY9lHaZidXiVNQ1dPAxk7nNduRSxSt8xzkVN569HQffPG0fEaHFJaCip4ZEiSJPwkcsskj3RtkVURrk0RHIlrcymsk1qIv6taBhnlPzH1fF2Kr748p+Y+r4uxVffLaqG5lMGm2t43CrVno6eNrl4PpqiJXIlroiq/wBP/JukL95jHWtvNa63RdL2IH0KQAUEAFBABSAAAAABSACkAAAAea2jfAuJfu7vtQyjL1XUwZedJR73hCVDkYjI0ldZXtRfNVFvpfmNX2jfAuJfu7vtQ8Dsw+C2fLTfahjzXWMv6q5eHNyTXVlRSvfWo5Jknc1N+FIV5NGMVPNsl0uq6nokAQ4sru7Z14rYv8K4v8V336nkMtfldf8AKO/rcev2L/CuL/Fd9+p5DLX5XX/KO/rcd3L9uuvh+uPSO4L6lPKZG41P+1/2PVu4L6lPKZH41H+z/wBzlw+jL+HXn9zH+Xc5f/Oeg+On3Tjk5s/PCX40H/xMONl/856D46fdOGfa1lNmmpnejlbGtOrkaiK5b0kaaIqp09J28PtMXFy/VXsAeV8faL9XU/Uj748faL9XU/Uj753+ph8sNVwtpfvaP41R9kZ+hqL8VF8mz+lD8x5vx+CubTpC2RvJLIruUa1t95G2tZy/oqfpyi/FRfJs/pQ5eSy5WxeeH3BSFEqAQCgAAAAAIAAKAICkAApAPNbRvgXEv3Z32oY3k7O1LQUaU8sU73o977xoxWWda3FyKaJmLalh1LUVNDNTVE3JK6GWzIlifp5zbOdqmttU19R5jx9yt1C3sVF3iuWMymqizb+fKdQfqKn6sXfKm0+g/UVP1Yu+Xx8yv1C3sVF3h4+ZX6hb2Ki7xn6GCO2Gw+VJMRxSREVGvj30vxRHTKqIvpPCUGKx0lVWLI17t+R6Juo1VRUe7jdfSaRh21TA6Te8FwuWnR9t/kIKaLetw3t12trr9Jxp9oWWpHukkwTfe9Vc9z6Ojc5zlW6qqq7VV6TWyWaq+NuN3Hk/G2m/Vy/VZ3j5xZmomX3IHs3l3l3WRt3ndK2ces8fMrdQt7FRd4ePmV+oW9iou8Zehg19fN5zJ1aypzHQSsRyIslrOsi6RO6FLtNkZHmSrfKxXRp4Mrm2Rd5PBY04Louv2HqqPaTl6nektPg7oJURUR8VLSRvRFSyojmuuh/VftMy/VPSSpwh9RIiI1HzU1JK5GoqqibznXtqunpNsf8AXWvwyt7rbWe+62G/5Rf4UfeHuthv+UX+FH/c9x4+ZW6hb2Ki7w8fcrdQt7FRd419W/E/pTtjNcXq6aVGchFySt3t/wA1rd69rcF9C/SfrCj/ABUXybP6UMbZn/LDVRzcCRqoqKipR0SKipwVPOO9g2z4U5UR8FWxFX3yxxOa30rZ9/oQzyu7upk000p0uA5moMSaq0dSyZW6vZq2VqXtdzHWciem1juiEoCgAQoAgKAICgCAoAgKQAAAOrrMAoKh6y1FDSzyKiIsk1NDI9UTgiuc258fFPCeq6HsVP3TugB0viphXVdD2Kn7pwPczLvKcj4NhPK/quRouU+ra5n20nMtXX17sFoHKyJi8nUua7d5V9rvRzk1RjU0VOdUXjodN5O4dy3hL+Vtx3E3N74vG3zlblMfLbi6fk5ZbjG0+KeE9V0PYqfujxTwnquh7FT90y7ZxmSsw/EG4NXPV8Mi8nTuc5XJC+12bqrqrHcLcy24anp9rGcJcOhipaRVbV1aO89qXfDEiol2p+k5Vsi81nc9izLKXG6rvazCMv06o2opcKgc73rZYKOJy+pHJqcqPLGDvajmYbQOaqXRzaOmVFT0KjTHKDZ2sreVrqmTl5PPc1lnq1y6+e9b7zun086nyp6iuytWRSMldNQzP/CxolmStSyORWro2RE1RyLrbouha42TbLHlwyy7ZfdtfinhPVdD2Kn7px6vL+CQN35qHDYW/pS01JG36XNGaMzxUGFvxFtpUcyNaZL2SV8iJufNrvL6EUxOhwSrxlzq/Eal9pFVGcFc5qKvvU4MYi3siJ06dNLZjN10cfFlyXWM3W2UeA4HO3fgocNmb+lFTUsjfpa05HinhPVdD2Kn7pheIZfqsIVK/DqqS8Vt5U82RjbpqttHs4XRUt0oqG1ZOzMzEcNZWutG5iOZUonvY5GJdy+hFSzk9DkEsym4cnFlx3WU1XIkyvhDGq52G0CNRLq51HTI1E6VVWnAiwTLtXvRRU2GSuS+8lOym5Rvzs1QyatrK7NFZJ+EdT4fAvmMXVsbdd27UXzpFsqqqrprrwRftX7OEYzfo6mTl2We1JEa3ecmqbrktur0Lr8xeY2zcc+XLhjl22u6zZsxko//AGGBvlZJAqyeDo9VlaiJqsL/AHyrb/Ct1W62VdEX1ezXOyYvA6Oaza6nanLNSzUlZwSVqc2uionBVTpQ67ZJm+euZNQ1rlfV0qbzXu0kkhvurv8AS5q2RV595L63VfOY9D7iZrpaiFN2Cucxz2ou6xGyuWOVPmXz7dKp0FWjbQUAQFAEBQBAUAQFIABQBAAAAAH58j/8LMuIR1C7izzVO452iLysiSsW/wC01UT1qe3O4z5kODGGpKj+QrI27rJkTea9l77j286arZU1S/PwPAeTnMtuQ8Ni5L3u94XNubvR73et6LGWfH3Xbv6brZw43Gzbr53JWZlw6Ons50M1Mj1at0TkpFlkW/7Lb/O07bbLG6DGMNrXoqwclE3TXzoZ3Pe36Ht+lT3GQshQYO1ZXO8IrJG7r5d3daxt77rE5k4XVdVtzcDu8zZepsUpnUtS3zVVHse3R8UiXs9q9Oqp6UVTSTU04uXL1Mrlfy8zDKyRjXscjmPajmPat2uavBUU8NtVrY/B4KbeRZlmSfdTi2NGubdei6u0+Kpyl2aY/RudHRVzHwKulppIfnVioqIvqVTvsn7LlgqW1uKTtqqhio9kbVfJGkicHve7V6pppZEunObXk3NOPj6bsz7tuNtFwidmVsOjci79ElC6obzttC6Nfoc9EOLlOsjmoKfk1RVijbE9vO17Ust/Xa/zmu1MEc0b4pWI+KVrmPY5Ltc1yWVFT1GQYpsoraeZ0uEVaMjcq2jlkfFIxP0d5EVHpx42+fic+ePdHp9L1HoZb1uV9M0VkcFDUrIqJykUkLE53Pc1WoidPG/qRTkbL8Kmly3iTESzq5a1tP0OvAkSO+sjk/0nBw7ZRiFVM2TF6xFiaqeZHI+WVyc7UVyIjE4apf1GwUdLHBEyGFqRxRNaxjW6I1qJZEGGPbDquo9bLcmpGF7LKxiR1FKq7syScqjV0c5u6jVsn7Kt1+Me9lkaxrnPcjGMarnucqNa1qJdVVeZDr857L/Cqh1dhk7aSqe5XyRuVzI3yLxe1zdWKut9FRVXm1v5/wAmuYKtWxVtextOipvb08k2ic6MRERy+tU9ZvOTU08zk6bvz7pTZE1ajHcRrI0VIOTqHXtb8bO1zGr6VRrl/wBJydsjklxbB6ZmsvmrZOP4SdrW/wDLFPfYZh2H5cw5/n7kMaLJNM+3KTSWtzcVXREahnWRoZsex2bGJ2q2mpXI6NqpdEeiWhiRedWp56qnPb9IzdMmpptxCgJQFAAAgFAAEAAAAAAABluaNq78PrZ6P3NV/IvRu++oWJZEsi7yN3F81ebVbodR5cndVt7YvszaQBi3lyd1W3ti+zHlyd1W3ti+zNpAGLeXJ3Vbe2L7MeXJ3Vbe2L7M2ogGLeXJ3Vbe2L7MeXJ3Vbe2L7M2kAYt5cndVt7Yvsx5cndVt7YvszagBivlyd1W3ti+zHlyd1W3ti+zNpKBivlyd1W3ti+zHljrqhFZR4U10ttPPlqdebzGtRV+k2ogGIwZRx7MEzJsXkfSUrVRzY3N5NzU50jh/wALrabz9eHvrWNfwfC4KGnjpqaNI4Y0sjU1VV53OXncvFVOeUCAoAgKAICgCAoAgAAoIAKQpAAAAAAAAAAKQACkAApAAAAFIUAAAAAAAAAAAIAAABQIAAAAAAAAAAAAAAAAAAAAAFIUAAAAAAAAAAAICgCApAAAAAAAAAAAAAAAAAAAAAAAUAAAAAAAAACAoAgAAAAAAAAAAAAAAAAAAAAAAAAAAFAAAAAAAAAAAAD/2Q==">
    <title>Quản lý sản phẩm</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.2/css/all.min.css">
    <link rel="stylesheet" href="../../../bootstrap-5.0.2-dist/css/bootstrap.css">
    <style>
        td {
            text-align: center;
        }
        th{
            text-align: center;
        }

        a{
            text-decoration: none;
        }

        a:hover {
            text-decoration: underline;
            color: blue;
        }

        body{
            background-color: #e3e3ff;
            font-family: Arial, sans-serif
        }
    </style>
</head>
<body>
<h2 style="text-align: center">Ứng dụng quản lý sản phẩm</h2>
<p style="text-align: center">
    <a href="/product?action=create"><i class="fa-solid fa-plus"></i> Thêm thông tin sản phẩm</a>
</p>
<form class="d-flex justify-content-end" action="/product?action=Search">
    <input type="text" name="nameSearch" placeholder="Nhập tên cần tìm kiếm" style="margin-right: 20px;">
    <input type="submit" name="action" value="Search" style="margin-right: 20px;">
</form>
<table class="table table-striped">
    <tr>
<%--        <th>Mã sản phẩm</th>--%>
        <th>Tên sản phẩm</th>
        <th>Giá tiền</th>
        <th>Mô tả</th>
        <th>Hãng sản xuất</th>
        <th>Cập nhập</th>
        <th>Xóa</th>
        <th>Xem</th>
    </tr>
    <c:forEach items="${productList}" var="product">
        <tr>
<%--            <td>${product.getId()}</td>--%>
            <td>${product.getName()}</td>
            <td>${product.getPrice()}</td>
            <td>${product.getDescribe()}</td>
            <td>${product.getProducer()}</td>
            <td><a href="/product?action=update&id=${product.getId()}"><i class="fa-solid fa-pen-to-square"></i></a></td>
            <td><a href="/product?action=delete&id=${product.getId()}"><i class="fa-solid fa-trash-can"></i></a></td>
            <td><a href="/product?action=view&id=${product.getId()}"><i class="fa-solid fa-eye"></i></a></td>
        </tr>
    </c:forEach>
</table>
</body>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>
</html>
