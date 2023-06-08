<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<link href="/css/bootstrap.css" rel="stylesheet">
<link href="/css/style.css" rel="stylesheet">
<link href="/css/bootstrapCustomer.css" rel="stylesheet">
<link href="/css/styleCustomer.css" rel="stylesheet">
<body>

<div class="container">

    <img src="/img/updatecustomer.jpg" alt="" style="width:1400px; border-radius: 25px 30px 20px 35px; ">

    <form:form method="post" action="/update-customer/${id}">

        <div class="mb-3">
            <td>First Name: </td>
            <td><form:input path="firstname" class="input-field form-control" /></td>
        </div>

        <div class="mb-3">
            <td>Last Name: </td>
            <td class="inputfrm"><form:input path="lastname" class="input-field form-control"/></td>
        </div>

        <div class="mb-3">
            <td>Mobile Number: </td>
            <td class="inputfrm"><form:input path="mobile" class="input-field form-control"/></td>
        </div>

        <div class="mb-3">
            <td>Email: </td>
            <td class="inputfrm"><form:input path="email" class="input-field form-control"/></td>
        </div>

        <div class="mb-3">
            <td>Password: </td>
            <td class="inputfrm"><form:input path="password" class="input-field form-control"/></td>
        </div>

        <div class="mb-3">
            <td>Address: </td>
            <td class="inputfrm"><form:input path="address" class="input-field form-control"/></td>
        </div>

        <div class="mb-3">
            <td>Country: </td>
            <td class="inputfrm"><form:input path="country" class="input-field form-control"/></td>
        </div>

        <tr>
            <td></td>
            <td><input class="btn btn-color" type="submit" value="Update" /></td>
        </tr>


    </form:form>
</div>

</body>
<script src="/js/bootstrap.js"></script>