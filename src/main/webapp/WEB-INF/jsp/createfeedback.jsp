<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Geologica&display=swap" rel="stylesheet">

<link href="/css/bootstrapFeedback.css" rel="stylesheet">
<link href="/css/styleFeedback.css" rel="stylesheet">
<body>
<div class="container">

    <img src="img/addfeedback.jpg" style="width:1400px; border-radius: 25px 30px 20px 35px; " alt="">

    <h1 class="text-dark text-center" style="font-family: 'Geologica', sans-serif;">Create Feedback</h1>
    <form:form method="post" action="/create-feedback">

        <div class="mb-3">
            <td>First Name: </td>
            <td><form:input path="name" class="input-field form-control" /></td>
        </div>

        <div class="mb-3">
            <td>Email: </td>
            <td class="inputfrm"><form:input path="email" class="input-field form-control"/></td>
        </div>

        <div class="mb-3">
            <td>Your Message: </td>
            <td class="inputfrm"><form:input path="message" class="input-field form-control"/></td>
        </div>

        <div class="mb-3">
            <td>Ratings out of 10/10: </td>
            <td class="inputfrm"><form:input path="ratingsforthehotel" class="input-field form-control"/></td>
        </div>


        <td><input class="btn btn-color" type="submit" value="Create"/></td>

    </form:form>

</div>
</body>
<script src="/js/bootstrap.js"></script>