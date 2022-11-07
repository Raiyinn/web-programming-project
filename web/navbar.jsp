<%@ taglib prefix="c" uri='http://java.sun.com/jsp/jstl/core' %>

<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">Mini E-Commerce</a>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="home">Home</a>
        </li>
        <c:if test="${user.role == 1}">
          <li class="nav-item">
            <a class="nav-link active" data-toggle="modal" data-target="#exampleModalCenter">Add Product</a>
            <jsp:include page="new_product.jsp" />
          </li>
        </c:if>
        <li class="rightItem">
           <a class="nav-link" data-toggle="modal" data-target="#exampleModal">Shopping Cart</a>
           <jsp:include page="shoppingcart.jsp" />
        </li>  
      </ul>
      <c:if test="${user.role != 3}">
        <form action="Logout" method="POST" class="d-flex">
            <span class="navbar-text" style="margin-right: 10px">${user.username}</span>  
            <button class="btn btn-outline-danger" type="submit">Log out</button>
        </form>
      </c:if>
      <c:if test="${user.role == 3}">
        <form action="Logout" method="POST" class="d-flex">
            <span class="navbar-text" style="margin-right: 10px">${user.username}</span>  
            <button class="btn btn-outline-success" type="submit">Login</button>
        </form>
      </c:if>
    </div>
  </div>
</nav>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>