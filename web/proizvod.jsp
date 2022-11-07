<%-- 
    Document   : proizvod
    Created on : Nov 24, 2021, 3:10:51 PM
    Author     : korisnik
--%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="Beans.Product"%>
<%@page import="Beans.Product"%>
<%@ taglib prefix="c" uri='http://java.sun.com/jsp/jstl/core' %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Proizvod</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" 
              integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <link href='https://fonts.googleapis.com/css?family=Poppins' rel='stylesheet'>
        <style>
            body{
                font-family: Poppins;
            }
            .card-title{
                margin: 2vh;
                text-align: center;
                font-size: 1.5rem;
            }
            .card-text{
                margin: 2vh 3vh 2vh 3vh;
                text-align: center;
                font-size: 1rem;
            }
            .card-img-top{
                width: 16rem;
                margin-left: 1rem;
                margin-top: 1rem;
            }
            .card{
                margin: 10px;
                width: 18rem;
                display: flex;
                justify-content: center;
                background-color: #eeeeee;
                border-radius: 20px;
                box-shadow: 0px 25px 40px #1687d933;
                transition: 1s;
            }
            .card:hover{
                background-color: cornflowerblue;
                transition: 1s;
            }
            .card-container{
                margin: auto;
                width: 90%;
                height: 15%;
                display: flex;
                justify-content: space-around;
                align-items: center;
            }
        </style>
    </head>
    <body>
        
        <c:forEach items="${products}" var="prod">
        <div class="card">
            <!--<img src="https://bajra.ba/wp-content/uploads/2021/08/logo-5.png" class="card-img-top" alt="...">-->
            <div class="card-body">
                <h5 class="card-title">${prod.getName()}</h5>
                <p class="card-text">${prod.description}</p>
                <div class="card-container">
                    <c:if test="${user.role != 3}">
                    <a href="AddToCart?id=${prod.id}&name=${prod.name}&description=${prod.description}&price=${prod.price}" class="btn btn-primary">Add to cart</a>
                    </c:if>
                    <div class="price">Cijena: ${prod.price}KM</div>
                </div>
            </div>
       </div>
       </c:forEach>
   </body>
</html>
