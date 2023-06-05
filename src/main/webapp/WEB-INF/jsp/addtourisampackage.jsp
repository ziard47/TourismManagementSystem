<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Geologica&display=swap" rel="stylesheet">

<link href="/css/bootstrap.css" rel="stylesheet">
<link href="/css/style.css" rel="stylesheet">
<body>
<div class="container">

    <img src="img/adminsidecvrimg.jpg" style="width:1400px; border-radius: 25px 30px 20px 35px; " alt="">
    
<h1 class="text-dark text-center" style="font-family: 'Geologica', sans-serif;">Tour Package</h1>
<form:form method="post" action="/add-tourisam-package">
    
    <div class="mb-3">
        <td>Package:</td>
        <td><form:input path="packagename" class="input-field form-control" /></td>
    </div>

    <div class="mb-3">
        <td>Package Name: </td>
        <td class="inputfrm"><form:input path="packagetype" class="input-field form-control"/></td>
    </div>

    <div class="mb-3">
        <td>Price: </td>
        <td class="inputfrm"><form:input path="price" class="input-field form-control"/></td>
    </div>

    <div class="mb-3">
        <td>Description: </td>
        <td class="inputfrm"><form:input path="description" class="input-field form-control"/></td>
    </div>

    <div class="mb-3">
        <td>Pick up Location: </td>
        <td class="inputfrm"><form:input path="location" class="input-field form-control"/></td>
    </div>

    <td><input class="btn btn-primary" type="submit" value="Add Package"/></td>

</form:form>

 </div>
</body>
<script src="/js/bootstrap.js"></script>