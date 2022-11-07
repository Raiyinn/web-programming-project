<%-- 
    Document   : indexjsp
    Created on : Nov 23, 2021, 5:41:13 PM
    Author     : Tarik
--%>

<%@page import="Beans.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri='http://java.sun.com/jsp/jstl/core' %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>Home</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" 
              integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <link href='https://fonts.googleapis.com/css?family=Poppins' rel='stylesheet'>
        <style>
            .main{
                min-height: 100vh;
                background-color: #e3f2fd;
            }
            body {
                min-height: 100vh;
                font-family: Poppins;
            }
            .section{
                margin-top: 5vh;
                margin-left: auto;
                margin-right: auto;
                margin-bottom: 5vh;
                width: 80%;
                height: 100%;
                display: flex;
                flex-wrap: wrap;
                justify-content: space-between;
            }
            .rightItem{
                margin-right: 3vh;
            }
        </style>
        <script>
            $('#myModal').on('shown.bs.modal', function () {
            $('#myInput').trigger('focus')
            })
        </script>
    </head>
    <body>
        <div class="main">  
            <jsp:include page="navbar.jsp" />
            <div class="section">
            <jsp:include page="proizvod.jsp" />
            </div>
        </div> 
    </body>
</html>

