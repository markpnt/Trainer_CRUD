<%-- 
    Document   : bynametrainer
    Created on : Jun 24, 2020, 12:30:29 PM
    Author     : mapan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Selected Trainers</title>
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
            <h1>Selected Trainers</h1>
        </div>
        <div class="table-responsive-md my-3 container">
            <table class="table table-striped table-hover">
                <caption>Selected Trainers</caption>
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Surname</th>
                    <th>Subject</th>
                    <th>Delete</th>
                    <th>Update</th>
                    <th>Details</th>
                </tr>
                <c:forEach items="${resulttrainers}" var="rt">
                    <tr>
                        <td>${rt.id}</td> 
                        <td>${rt.trainername}</td>
                        <td>${rt.surname}</td>
                        <td>${rt.subject}</td>
                        <td>
                            <form action="deletetrainer" method="post">
                                <input type="hidden" name="id" value="${rt.id}">
                                <input type="submit" class="btn btn-danger btn-sm" value="Delete">
                            </form>
                        </td>
                        <td>
                            <form action="edittrainer" method="post">
                                <input type="hidden" name="id" value="${rt.id}">
                                <input type="submit" class="btn btn-success btn-sm" value="Update">
                            </form>
                        </td>
                        <td>
                            <form action="trainerdetails" method="post">
                                <input type="hidden" name="id" value="${rt.id}">
                                <input type="submit" class="btn btn-primary btn-sm" value="Details">
                            </form>
                        </td>
                    </tr>
                </c:forEach>
            </table>
        </div>
        <jsp:include page="footer.jsp"/>
    </body>
</html>
