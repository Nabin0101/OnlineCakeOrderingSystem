<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style >
  
  .custom-text{
	color:red;
	margin:0px;

	text-align: center;
}
.custom-text1{
	text-align: center;
	margin:0px;
}
.card-row{
	display: grid;
	grid-template-columns: auto auto auto auto;
}
.card-row-items{
	margin:20px;
}
.card-body{
text-align:center;
}

.star{
color:Yellow;
}
.card-img-top {
    transition: transform 0.3s ease;
}

.card-img-top:hover {
    transform: scale(1.1);
}

.cart-item {
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
    background-color: rgba(0, 0, 0, 0.8);
    color: white;
    padding: 10px;
    opacity: 0;
    pointer-events: none;
    transition: opacity 0.3s ease;
}

.card:hover .cart-item {
    opacity: 1;
    pointer-events: auto;
}

 .card-row-items {
    position: relative;
    overflow: hidden;
  }

  .card-row-items:hover .add-to-cart {
    opacity: 1;
  }

  .add-to-cart {
    position: absolute;
    top: 10px;
    right: 10px;
    font-size: 24px;
    color: #fff;
    background-color: #000;
    padding: 8px;
    border-radius: 50%;
    opacity: 0;
    transition: opacity 0.3s ease-in-out;
  }
</style>
<script>
document.addEventListener('DOMContentLoaded', function() {
    var images = document.querySelectorAll('.card-row-items img');
    
    for (var i = 0; i < images.length; i++) {
      images[i].addEventListener('click', function() {
        window.location.href = 'AddtoCart.jsp';
      });
    }
  });
  
$(document).ready(function() {
    $(".card-row-items").hover(
      function() {
        $(this).find(".add-to-cart").css("opacity", "1");
        
      },
      function() {
        $(this).find(".add-to-cart").css("opacity", "0");
      }
    );
  });
  
document.addEventListener('DOMContentLoaded', function() {
  var addToCartIcon = document.querySelector('.add-to-cart i');
  
  addToCartIcon.addEventListener('click', function() {
    window.location.href = 'AddtoCart.jsp';
  });
});
</script>
</head>
<body>
<!-- Navigation section -->
    <nav class="navbar navbar-expand-md navbar-dark bg-dark">
        <a class="navbar-brand" href="#">
        <img alt="Cake Logo" src="https://img.freepik.com/free-vector/bakery-shop-logo-emblem-template_17005-1482.jpg?w=740&t=st=1685761573~exp=1685762173~hmac=244ae50c1d206ba4f6f22cc9954b5c7b44e280d513ac2c40918c285f82bdbaaa" height=40px width=40px>
        </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav mr-auto">
                 <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="customerCenterDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Cakes</a>
                    <div class="dropdown-menu" aria-labelledby="customerCenterDropdown">
                        <a class="dropdown-item" href="Controller?action=blackforest">Black Forest</a>
                        <a class="dropdown-item" href="Controller?action=butterscotch">Butterscotch</a>
                        <a class="dropdown-item" href="#">Blueberry</a>
                    </div>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">About</a>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="customerCenterDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Customer Center</a>
                    <div class="dropdown-menu" aria-labelledby="customerCenterDropdown">
                        <a class="dropdown-item" href="#">Contact</a>
                        <a class="dropdown-item" href="#">Terms and Conditions</a>
                        <a class="dropdown-item" href="#">FAQ</a>
                    </div>
                </li>
            </ul>
            <form class="form-inline my-2 my-lg-0" method="post">
                <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
                <button class="btn btn-outline-light my-2 my-sm-0" type="submit">Search</button>
            </form>
            <ul class="navbar-nav ml-auto">
            <li class="nav-item">
                    <a class="nav-link" href="#">
                    <i class=" fas fa-regular fa-cart-shopping"></i> Add to Cart
                    </a>
                </li>
                 
                <li class="nav-item">
                    <a class="nav-link"  href="Controller?action=login">Login/Register</a>
                </li>
                 
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
        	<i class="fas fa-sharp fa-light fa-gear"></i> Settings
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
          <a class="dropdown-item" href="#">Customer</a>
          <a class="dropdown-item" href="Controller?action=logout" >Logout</a>
        </div>
      </li>
            </ul>
        </div>
    </nav>
</body>
</html>