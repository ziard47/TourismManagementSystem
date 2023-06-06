<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<link href="/css/bootstrap.css" rel="stylesheet">
<link href="/css/style.css" rel="stylesheet">
<body>

<div class="container">

    <img src="/img/updatepckge.jpg" alt="" style="width:1400px; border-radius: 25px 30px 20px 35px; ">

<form:form method="post" action="/update-package/${id}">

    <div class="mb-3">
        <td>Package:</td>
        <td><form:input path="packagename" class="input-field form-control" /></td>
    </div>

    <div class="mb-3">
        <td>Package Name:</td>
        <td><form:input path="packagetype" class="input-field form-control" /></td>
    </div>

    <div class="mb-3">
        <td>Activities</td>
        <td><form:input path="activity" class="input-field form-control" /></td>
    </div>

    <div class="mb-3">
        <td>Price:</td>
        <td><form:input path="price" class="input-field form-control" /></td>
    </div>

    <div class="mb-3">
        <td>Description:</td>
        <td><form:input path="description" class="input-field form-control" /></td>
    </div>

    <div class="mb-3">
        <td>Pick up Location:</td>
        <td><form:input path="location" class="input-field form-control" /></td>
    </div>

    <div class="mb-3">
        <td>Destination</td>
        <td><form:input path="destination" class="input-field form-control" /></td>
    </div>

    <div class="mb-3">
        <td>Availability Status:</td>
        <td><form:input path="availability" class="input-field form-control" /></td>
    </div>
        <tr>
            <td></td>
            <td><input class="btn btn-color" type="submit" value="Update" /></td>
        </tr>


</form:form>
    </div>

</body>
<script src="/js/bootstrap.js"></script>