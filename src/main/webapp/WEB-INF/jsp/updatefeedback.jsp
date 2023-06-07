<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<link href="/css/bootstrapFeedback.css" rel="stylesheet">
<link href="/css/styleFeedback.css" rel="stylesheet">
<body>

<div class="container">

    <img src="/img/updatefeedback.jpg" alt="" style="width:1400px; border-radius: 25px 30px 20px 35px; ">

    <form:form method="post" action="/update-feedback/${id}">

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

        <tr>
            <td></td>
            <td><input class="btn btn-color" type="submit" value="Update" /></td>
        </tr>


    </form:form>
</div>

</body>
<script src="/js/bootstrap.js"></script>