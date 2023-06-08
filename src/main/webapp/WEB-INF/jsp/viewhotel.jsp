<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<link href="/css/bootstrap.css" rel="stylesheet">
<link href="/css/style.css" rel="stylesheet">

<body>

<div class="container">

    <img src="img/view_hotel.jpg" style="width:1400px; border-radius: 25px 30px 20px 35px;" alt="">

    <table cellpadding="2" class="table" style="width:80%; margin-top: 30px; margin-left: auto; margin-right: auto;">
        <tr>
            <th>Id</th>
            <th>Hotel Name</th>
            <th>Address Line Number One</th>
            <th>Address Line Number Two</th>
            <th>Country</th>
            <th>Contact Number</th>
            <th>Email Address</th>
            <th>Update</th>
            <th>Delete</th>
        </tr>
        <c:forEach var="hotel" items="${hotels}">
            <tr>
                <td>${hotel.id}</td>
                <td>${hotel.name}</td>
                <td>${hotel.addressone}</td>
                <td>${hotel.addresstwo}</td>
                <td>${hotel.country}</td>
                <td>${hotel.connumber}</td>
                <td>${hotel.emailaddress}</td>
                <td><a class="btn btn-warning" href="/update-hotel/${hotel.id}">Update</a></td>
                <td><a class="btn btn-danger" href="/delete-hotel/${hotel.id}">Delete</a></td>
            </tr>
        </c:forEach>
    </table>
</div>
<br/>
<div class="d-flex justify-content-center">
    <a class="btn btn-color" href="/create-hotel">Create hotel details</a>
</div>


</body>
<script src="/js/bootstrap.js"></script>