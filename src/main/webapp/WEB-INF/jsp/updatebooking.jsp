<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<link href="/css/bootstrapBooking.css" rel="stylesheet">
<link href="/css/styleBooking.css" rel="stylesheet">
<body>

<div class="container">

    <img src="/img/updatebooking.jpg" alt="" style="width:1400px; border-radius: 25px 30px 20px 35px; ">

    <form:form method="post" action="/update-booking/${id}">

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
            <td><form:input path="packageid" class="input-field form-control" /></td>
        </div>

        <div class="mb-3">
            <td>Booked On: </td>
            <td><form:input path="bookedon" class="input-field form-control" /></td>
        </div>

        <div class="mb-3">
            <td>Number of days: </td>
            <td><form:input path="numberofdays" class="input-field form-control" /></td>
        </div>

        <tr>
            <td></td>
            <td><input class="btn btn-color" type="submit" value="Update" /></td>
        </tr>


    </form:form>
</div>

</body>
<script src="/js/bootstrap.js"></script>