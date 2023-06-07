<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Geologica&display=swap" rel="stylesheet">
<link href="/css/bootstrapCustomer.css" rel="stylesheet">
<link href="/css/styleCustomer.css" rel="stylesheet">
<body>
<div class="container">

    <img src="img/addcustomer.jpg" style="width:1400px; border-radius: 25px 30px 20px 35px; " alt="">

    <h1 class="text-dark text-center" style="font-family: 'Geologica', sans-serif;">Add Customer</h1>
    <form:form method="post" action="/add-customer">

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

        <td><input class="btn btn-color" type="submit" value="Register"/></td>

    </form:form>

</div>
</body>
<script src="/js/bootstrap.js"></script>