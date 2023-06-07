<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<link href="/css/bootstrap.css" rel="stylesheet">
<link rel="stylesheet" href="/css/style.css">

<body>
<div class="container">

    <img src="/img/add_hotel.jpg" alt="" style="width: 1300px; border-radius: 25px 30px 20px 35px;"; >
    
<form:form method="post" action="/create-hotel" style="margin-top:30px;">

    <div class="mb-3">
        <td>Hotel Name:</td>
        <td><form:input path="name" class="input-field form-control"/></td>
    </div>

    <div class="mb-3">
        <td>Address1: </td>
        <td> <form:input path="addressline1" class="input-field form-control"/></td>
    </div>

    <div class="mb-3">
        <td>Address2: </td>
        <td><form:input path="addressline2" class="input-field form-control"/></td>
    </div>

    <div class="mb-3">
        <td>Country: </td>
        <td><form:input path="country" class="input-field form-control"/></td>
    </div>

    <div class="mb-3">
        <td>Contact Number</td>
        <td><form:input path="connumber" class="input-field form-control"/></td>
    </div>

    <div class="mb-3">
        <td>Email Address</td>
        <td><form:input path="emailaddress" class="input-field form-control"/></td>
    </div>

        <tr class = "row">
            <td><input class="btn btn-color" type="submit" value="Add Hotel"/></td>
        </tr>

    </table>
</form:form>
    </div>
 </div>
</body>
<script src="/js/bootstrap.js"></script>