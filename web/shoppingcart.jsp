<%-- 
    Document   : shoppingcart
    Created on : Nov 24, 2021, 6:07:37 PM
    Author     : korisnik
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="Beans.Cart"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri='http://java.sun.com/jsp/jstl/core' %>

        <link href='https://fonts.googleapis.com/css?family=Poppins' rel='stylesheet'>
        <style>
            .Cart-Container{
                width: 50%;
                height: 85%;
                background-color: #ffffff;
                border-radius: 20px;
                box-shadow: 0px 25px 40px #1687d933;
            }
            .Header{
                margin: auto;
                width: 90%;
                height: 15%;
                display: flex;
                justify-content: space-between;
                align-items: center;
            }
            .Heading{
                font-size: 20px;
                font-weight: 700;
                color: #2F3841;
            }
            .Action{
                font-size: 14px;
                font-weight: 600;
                color: #E44C4C;
                cursor: pointer;
                border-bottom: 1px solid #E44C4C;
            }
            .Cart-Items{
                margin: auto;
                width: 90%;
                height: 30%;
                display: flex;
                justify-content: space-between;
                align-items: center;
            }
            .image-box{
                width: 15%;
                text-align: center;
            }
            .about{
                height: 100%;
                
            }
            .cart-title{
                padding-top: 20px;
                line-height: 10px;
                font-size: 32px;
                font-weight: 800;
                color: #202020;
            }
            .cart-desc{
                padding-top: 20px;
                line-height: 10px;
                font-size: 18px;
                font-weight: 600;
                color: #909090;
            }
            .prices{
                height: 100%;
                text-align: right;
            }
            .amount{
                padding-top: 20px;
                font-size: 26px;
                font-weight: 800;
                color: #202020;
            }
            .remove{
                padding-top: 5px;
                font-size: 14px;
                font-weight: 600;
                color: #E44C4C;
                cursor: pointer;
            }
            hr{
                width: 66%;
                float: right;
                margin-right: 5%;
            }
            .checkout{
                float: right;
                margin-right: 5%;
                width: 40%;
            }
            .total{
                width: 100%;
                display: flex;
                justify-content: space-between;
            }
            .Subtotal{
                font-size: 22px;
                font-weight: 700;
                color: #202020;
            }
            .items{
                font-size: 16px;
                font-weight: 500;
                color: #909090;
                line-height: 10px;
            }
            .total-amount{
                font-size: 36px;
                font-weight: 900;
                color: #202020;
            }
        </style>
        <!-- Modal -->
          <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
              <div class="modal-content">
                <div class="modal-header">
                  <h5 class="modal-title" id="exampleModalLabel">Shopping Cart</h5>
                  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                  </button>
                </div>
                <div class="modal-body">
                    <c:forEach items="${cartList}" var="cartProd">
                        <div class="Cart-Items">
                          <div class="about">
                                <h1 class="cart-title">${cartProd.name}</h1>
                                <h3 class="cart-desc">${cartProd.description}</h3>
                          </div>
                          <div class="prices">
                              <div class="amount">${cartProd.price}KM</div>
                              <div class="remove"><u>Ukloni</u></div>
                          </div>
                        </div>
                    </c:forEach>
                    <hr>
                    </br>
                </div>
                <div class="modal-footer">
                  <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                  <button type="button" class="btn btn-primary">BUY!</button>
                </div>
              </div>
            </div>
          </div>
        
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>


