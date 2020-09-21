<%-- 
    Document   : selecttrainer
    Created on : Jun 20, 2020, 8:10:27 PM
    Author     : mapan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Search Trainers</title>
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
        <div class="page-header text-center text-white bg-secondary">
            <h1>Search Trainers By Surname</h1>
        </div>

        <form action="searchtrainer" method="post">
            <div class="container">
                <div class="form-group">
                    <label for="trainerlastname">Surname:</label>
                    <input id="trainerlastname" Class="form-control" type="text" name="surname" pattern="[A-Za-z ]{2,16}"
                           title="Latin characters from 2 to 16" placeholder="e.g Pasparakis" required="required">
                    <springform:errors cssClass="text-danger" path="surname"/>
                    <input type="submit" class="btn btn-block btn-primary mt-3" value="Search trainer">
                </div>
            </div>
        </form>
        <jsp:include page="footer.jsp"/>
    </body>
</html>
