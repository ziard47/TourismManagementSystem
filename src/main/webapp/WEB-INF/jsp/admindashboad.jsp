<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<link href="/css/dashboard.css" rel="stylesheet">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>

<section class="pt-5 pb-5 mt-0 align-items-center d-flex bg-dark" style="min-height: 50vh; background-size: cover; background-image: url(/img/background.jpg); background-position: center top; align-items: center">
    <div class="container">
        <div class="row">
            <div class="col-sm-6 offset-sm-3 mt-4 mb-4" style="color: white">
                <h1 class="text-center" style="font-size: 60px;">DASHBOARD</h1>
                <p class="text-center" style="font-size: 18px;">ABC Tour Organization System</p>
            </div>
        </div>
    </div>
</section>

<div class="container">


    <div class="row">
        <div class="col-md-4">
            <div class="card-box text-center">
                <div class="card-pic">
                    <img src="/img/hotels.jpg" class="img-fluid" alt="card Pic">
                </div>

                <hr>
                <h4>Hotels</h4>
                <hr>
                <button onclick="location.href='/view-hotel'" style="border-radius: 10px">View</button>
            </div>
        </div>

        <div class="col-md-4">
            <div class="card-box text-center">
                <div class="card-pic">
                    <img src="/img/Tour-Package.jpg" class="img-fluid" alt="card Pic">
                </div>

                <hr>
                <h4>Tour Packages</h4>
                <hr>
                <button onclick="location.href='/view-package'" style="border-radius: 10px">View</button>
            </div>
        </div>

        <div class="col-md-4">
            <div class="card-box text-center">
                <div class="card-pic">
                    <img src="/img/booking.jpg" class="img-fluid" alt="card Pic">
                </div>

                <hr>
                <h4>Booking</h4>
                <hr>
                <button onclick="location.href='/view-booking'" style="border-radius: 10px">View</button>
            </div>
        </div>
        <div class="col-md-4 offset-md-2">
            <div class="card-box text-center">
                <div class="card-pic">
                    <img src="/img/feedback.jpg" class="img-fluid" alt="card Pic">
                </div>

                <hr>
                <h4>Feedbacks</h4>
                <hr>
                <button onclick="location.href='/view-feedback'" style="border-radius: 10px">View</button>
            </div>
        </div>

        <div class="col-md-4">
            <div class="card-box text-center">
                <div class="card-pic">
                    <img src="/img/customer-management.jpg" class="img-fluid" alt="card Pic">
                </div>

                <hr>
                <h4>Customer Management</h4>
                <hr>
                <button onclick="location.href='/view-customer'" style="border-radius: 10px">View</button>
            </div>
        </div>
    </div>
</div>
</body>