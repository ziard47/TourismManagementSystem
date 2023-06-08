<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<link href="/css/bootstrapBooking.css" rel="stylesheet">
<link href="/css/styleBooking.css" rel="stylesheet">

<center><body class="bg">

<img src="img/readbooking.jpg" style="width:1400px; border-radius: 25px 30px 20px 35px;" alt="">

<table cellpadding="2" class="table" style="width:80%; margin-top: 30px;">
    <tr>
        <th>Id</th>
        <th>Customer Name</th>
        <th>Hotel id</th>
        <th>Package id</th>
        <th>Booked on</th>
        <th>Number of days</th>
        <th>Update</th>
        <th>Delete</th>
    </tr>
    <c:forEach var="booking" items="${bookings}">
        <tr>
            <td>${booking.id}</td>
            <td>${booking.customername}</td>
            <td>${booking.hotelid}</td>
            <td>${booking.packageid}</td>
            <td>${booking.bookedon}</td>
            <td>${booking.numberofdays}</td>
            <td><a class="btn btn-color" href="/update-booking/${booking.id}">Update</a></td>
            <td><a class="btn btn-danger" href="/delete-booking/${booking.id}">Delete</a></td>
        </tr>
    </c:forEach>
</table>
<br/>
<a class="btn btn-color" href="/add-booking"">Create Booking</a>
</body>
    <script src="/js/bootstrap.js"></script>