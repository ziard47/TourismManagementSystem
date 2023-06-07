<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<link href="/css/bootstrapCustomer.css" rel="stylesheet">
<link href="/css/styleCustomer.css" rel="stylesheet">

<center><body class="bg">

<img src="img/readcustomer.jpg" style="width:1400px; border-radius: 25px 30px 20px 35px;" alt="">

<table cellpadding="2" class="table" style="width:80%; margin-top: 30px;">
    <tr>
        <th>Id</th>
        <th>First name</th>
        <th>Last name</th>
        <th>Mobile</th>
        <th>Email</th>
        <th>Address</th>
        <th>Country</th>
        <th>Update</th>
        <th>Delete</th>
    </tr>
    <c:forEach var="customer" items="${customer}">
        <tr>
            <td>${customer.id}</td>
            <td>${customer.firstname}</td>
            <td>${customer.lastname}</td>
            <td>${customer.mobile}</td>
            <td>${customer.email}</td>
            <td>${customer.address}</td>
            <td>${customer.country}</td>
            <td><a class="btn btn-color" href="/update-customer/${customer.id}">Update</a></td>
            <td><a class="btn btn-danger" href="/delete-customer/${customer.id}">Delete</a></td>
        </tr>
    </c:forEach>
</table>
<br/>
<a class="btn btn-color" href="/add-customer">Create Customer</a>
</body>
    <script src="/js/bootstrap.js"></script>