<%-- 
    Document   : updatetrainerform
    Created on : Jun 22, 2020, 12:11:48 PM
    Author     : mapan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="springform" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update Trainer</title>
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
            <h1>Update Trainer</h1>
        </div>
        <springform:form action="updatetrainer" method="post" modelAttribute="traineredit">
            <div class="container">
                <div class="form-group">
                    <springform:input path="id" type="hidden"/>
                    <label for="trainername">First name:</label>
                    <springform:errors cssClass="text-danger" path="trainername"/>
                    <springform:input id="trainername" path="trainername" type="text" cssClass="form-control" name="trainername" pattern="[A-Za-z ]{2,16}"
                                      title="Latin characters from 2 to 16" required="required"/>
                    <label for="trainerlastname">Last name:</label>
                    <springform:errors cssClass="text-danger" path="surname"/>
                    <springform:input id="trainerlastname" path="surname" type="text" cssClass="form-control" name="surname" pattern="[A-Za-z ]{2,16}"
                                      title="Latin characters from 2 to 16" required="required"/>
                    <label for="subject">Subject:</label>
                    <springform:input id="subject" type="text" path="subject" cssClass="form-control" name="subject" pattern="[a-zA-Z0-9]+[a-zA-Z0-9 ]{2,16}"
                                      title="Latin characters and numbers min 2 to 16 chars" required="required"/>

                    <input type="submit" class="btn btn-block btn-primary mt-3" name="submit" value="submit">
                </div>
            </div>
        </springform:form>
        <jsp:include page="footer.jsp"/>
    </body>
</html>
