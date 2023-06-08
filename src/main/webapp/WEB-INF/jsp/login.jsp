<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<link rel="stylesheet" href="/css/login.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title>Login</title>

<body>

<div class="container" id="container">
    <div class="form-container log-in-container">
        <form:form method="post" action="/login-customer">
            <h1>Login</h1>
            <div class="social-container">
                <a href="#" class="social"><i class="fa fa-facebook fa-2x"></i></a>
                <a href="#" class="social"><i class="fab fa fa-google fa-2x"></i></a>
            </div>
            <span>or use your account</span>
            <form:input class="form-control" path="email" type="email" placeholder="Email" />
            <form:input class="form-control" path="password" type="password" placeholder="Password" />
            <a href="/add-customer">Not a member?</a>
            <%--<input class="btn btn-primary" type="submit" value="Login"/>--%>
            <button type="submit" value="Login">Log In</button>
            <br>
            <span>Just click the Login button for customer Booking</span>
        </form:form>
    </div>
    <div class="overlay-container">
        <div class="overlay">
            <div class="overlay-panel overlay-right">
                <img src="/img/overlay.png" alt="">
            </div>
        </div>
    </div>
</div>
</body>

<%--<div class="container">
    <h1>Login Contact</h1>
    <div class="form-group">
        <form:form method="post" action="/login-customer">
            <table>
                <tr class="row">
                    <td>Email: </td>
                    <td><form:input class="form-control" path="email"/></td>
                </tr>
                <tr class="row">
                    <td>Password: </td>
                    <td><form:input class="form-control" path="password"/></td>
                </tr>
                <tr class="row">
                    <td></td>
                    <td><input class="btn btn-primary" type="submit" value="Login"/></td>
                </tr>
                 <!-- Register buttons -->
                                <div class="text-center">
                                    <p>Not a member? <a href="/add-customer">Register</a></p>
                                </div>
            </table>
        </form:form>
    </div>
</div>--%>
</body></center>
<script src="/js/bootstrap.js"></script>
