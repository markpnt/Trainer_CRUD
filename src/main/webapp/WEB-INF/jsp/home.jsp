<%-- 
    Document   : home
    Created on : Jun 20, 2020, 5:04:28 PM
    Author     : mapan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home Page</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
              integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
                integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
        crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
                integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
        crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
                integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
        crossorigin="anonymous"></script>
    </head>
    <body>
        <%@include file="header.jsp" %>

        <div class="container">
            <div class="carousel slide" id="mycarousel1" data-ride="carousel">
                <ol class="carousel-indicators">
                    <li data-target="#mycarousel1" data-slide-to="0" class="active"></li>
                    <li data-target="#mycarousel1" data-slide-to="1"></li>
                    <li data-target="#mycarousel1" data-slide-to="2"></li>
                    <li data-target="#mycarousel1" data-slide-to="3"></li>
                </ol>
                <div class="carousel-inner">

                    <div class="carousel-item active">
                        <img src="/img/library.jpg" class="d-block w-100" alt="library">
                    </div>
                    <div class="carousel-item">
                        <img src="/img/graduation.jpg" class="d-block w-100" alt="graduation">
                    </div>
                    <div class="carousel-item">
                        <img src="/img/college.jpg" class="d-block w-100" alt="college">
                    </div>
                    <div class="carousel-item">
                        <img src="/img/uni.jpg" class="d-block w-100" alt="uni">
                    </div>
                </div>
                <a class="carousel-control-prev" href="#mycarousel1" role="button" data-slide="prev">
                    <span class="carousel-control-prev-icon"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="carousel-control-next" href="#mycarousel1" role="button" data-slide="next">
                    <span class="carousel-control-next-icon"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>
        </div>
        <jsp:include page="footer.jsp"/>
    </body>
</html>
