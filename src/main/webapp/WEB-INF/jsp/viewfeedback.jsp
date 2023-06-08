<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<link href="/css/bootstrapFeedback.css" rel="stylesheet">
<link href="/css/styleFeedback.css" rel="stylesheet">

<center><body class="bg">

<img src="img/readfeedback .jpg" style="width:1400px; border-radius: 25px 30px 20px 35px;" alt="">

<table cellpadding="2" class="table" style="width:80%; margin-top: 30px;">
    <tr>
        <th>Id</th>
        <th>name</th>
        <th>Email</th>
        <th>Message</th>
        <th>Ratings</th>
        <th>Update</th>
        <th>Delete</th>
    </tr>
    <c:forEach var="feedback" items="${feedbacks}">
        <tr>
            <td>${feedback.id}</td>
            <td>${feedback.name}</td>
            <td>${feedback.email}</td>
            <td>${feedback.message}</td>
            <td>${feedback.ratingsforthehotel}</td>
            <td><a class="btn btn-color" href="/update-feedback/${feedback.id}">Update</a></td>
            <td><a class="btn btn-danger" href="/delete-feedback/${feedback.id}">Delete</a></td>
        </tr>
    </c:forEach>
</table>
<br/>
<a class="btn btn-color" href="/create-feedback">Create Customer feedback</a>
</body>
    <script src="/js/bootstrap.js"></script>