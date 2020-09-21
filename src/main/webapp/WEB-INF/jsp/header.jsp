<%-- 
    Document   : header
    Created on : Jun 23, 2020, 11:47:20 AM
    Author     : mapan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>


<nav class="navbar navbar-expand-md navbar-light bg-info">
    <a class="text-light font-weight-bold" href="/">Coding Bootcamp</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbar1">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbar1">
        <ul class="navbar-nav">
            <li class="nav-item">
                <a class="nav-link text-light" href="/">Home</a>
            </li>
            <li class="nav-item dropdown">
                <a href="" id="dropdown1" class="nav-link dropdown-toggle text-light" data-toggle="dropdown">Trainers</a>
                <div class="dropdown-menu">
                    <a class="dropdown-item" href="/preinserttrainer">Add trainer</a>
                    <a class="dropdown-item" href="/fetchalltrainers">All trainers</a>
                    <a class="dropdown-item" href="/presearchform">Search trainers</a>
                </div>
            </li>
        </ul>
    </div>
</nav>


