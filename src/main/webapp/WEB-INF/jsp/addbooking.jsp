<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Geologica&display=swap" rel="stylesheet">

<link href="/css/bootstrapBooking.css" rel="stylesheet">
<link href="/css/styleBooking.css" rel="stylesheet">
<body>
<div class="container">

    <img src="img/createbooking.jpg" style="width:1400px; border-radius: 25px 30px 20px 35px; " alt="">

    <h1 class="text-dark text-center" style="font-family: 'Geologica', sans-serif;">Book Package</h1>
    <form:form method="post" action="/add-booking">

        <div class="mb-3">
            <td>Customer Name: </td>
            <td><form:input path="customername" class="input-field form-control" /></td>
        </div>

        <div class="mb-3">
            <td>Hotel Id: </td>
            <td class="inputfrm"><form:input path="hotelid" class="input-field form-control"/></td>
        </div>

        <div class="mb-3">
            <td>Package Id: </td>
            <td class="inputfrm"><form:input path="packageid" class="input-field form-control"/></td>
        </div>

        <div class="mb-3">
            <td>Booked On: </td>
            <td class="inputfrm"><form:input path="bookedon" class="input-field form-control"/></td>
        </div>

        <div class="mb-3">
            <td>Number of days: </td>
            <td class="inputfrm"><form:input path="numberofdays" class="input-field form-control"/></td>
        </div>

        <td><input class="btn btn-color" type="submit" value="Book"/></td>

    </form:form>

</div>
</body>
<script src="/js/bootstrap.js"></script>