<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<link href="/css/bootstrap.css" rel="stylesheet">

<center><body class="bg">

<img src="img/readpackge.jpg" style="width:1400px; border-radius: 25px 30px 20px 35px;" alt="">

<table cellpadding="2" class="table" style="width:80%; margin-top: 30px;">
    <tr>
        <th>Id</th>
        <th>Package</th>
        <th>Package Type</th>
        <th>Activities</th>
        <th>Price</th>
        <th>Description</th>
        <th>Pickup Location</th>
        <th>Destination</th>
        <th>Availability Status</th>
    </tr>
    <c:forEach var="packag" items="${packages}">
        <tr>
            <td>${packag.id}</td>
            <td>${packag.packagename}</td>
            <td>${packag.packagetype}</td>
            <td>${packag.activity}</td>
            <td>${packag.price}</td>
            <td>${packag.description}</td>
            <td>${packag.location}</td>
            <td>${packag.destination}</td>
            <td>${packag.availability}</td>
        </tr>
    </c:forEach>
</table>
<br/>

</body>
    <script src="/js/bootstrap.js"></script>