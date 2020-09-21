<%-- 
    Document   : createtform
    Created on : Jun 20, 2020, 5:44:03 PM
    Author     : mapan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="springform" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Trainer</title>
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
            <h1>Add Trainer</h1>
        </div>

        <springform:form action="doinserttrainer" method="post" modelAttribute="newtrainer">
            <div class="container">
                <div class="form-group">
                    <label for="trainername">First name:</label>
                    <springform:errors cssClass="text-danger" path="trainername"/>
                    <springform:input id="trainername" path="trainername" type="text" cssClass="form-control" name="trainername" pattern="[A-Za-z ]{2,16}"
                                      title="Latin characters from 2 to 16" placeholder="e.g Giorgos"/>

                    <label for="trainerlastname">Last name:</label>
                    <springform:errors cssClass="text-danger" path="surname"/>
                    <springform:input id="trainerlastname" path="surname" type="text" cssClass="form-control" name="surname" pattern="[A-Za-z ]{2,16}"
                                      title="Latin characters from 2 to 16" placeholder="e.g Pasparakis" required="required"/>
                    <label for="subject">Subject:</label>
                    <springform:input id="subject" type="text" path="subject" cssClass="form-control" name="subject" pattern="[a-zA-Z0-9#]+[a-zA-Z0-9# ]{1,16}"
                                      title="Latin characters and numbers min 2 to 16 chars" placeholder="e.g C#" required="required"/>
                    <input type="submit" class="btn btn-block btn-primary mt-3" name="submit" value="submit">
                    <input type="reset" class="btn btn-block btn-danger mt-3" value="Reset">
                </div>
            </div>
        </springform:form>
        <jsp:include page="footer.jsp"/>
        <script>
            var doubleTrainer = '${doubletrainer}';
            if (doubleTrainer) {
                alert(doubleTrainer);
            }
        </script>
    </body>
</html>
