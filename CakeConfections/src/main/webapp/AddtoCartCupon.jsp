<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
 <style>
    .container {
      margin-top: 50px;
    }
    .btn btn-secondary{
    display: flex;
    padding-right:20px;
    }
  </style>
</head>

<body>
<div class="container">

    <div class="alert alert-success" role="alert" id="successMessage" style="display: block;">
   <i class=" fas fa-solid fa-check"></i> Product successfully added to your cart
    </div>

    <div class="row">
      <div class="col-md-4">
        <img src="https://yourkoseli.com/wp-content/uploads/2022/03/GTI22711_11zon-600x600.jpeg" alt="Product Image" class="img-fluid">
      </div>
      <div class="col-md-8">
        <h4>Elegant Mothers Day Cake</h4>
        <div class="form-group">
          <label for="quantity">Quantity:</label>
          <div class="input-group">
            <div class="input-group-prepend">
              <button class="btn btn-outline-secondary" type="button" onclick="changeQuantity(false)">-</button>
            </div>
            <input type="number" class="form-control" id="quantity" value="1" min="1">
            <div class="input-group-append">
              <button class="btn btn-outline-secondary" type="button" onclick="changeQuantity(true)">+</button>
            </div>
          </div>
        </div>
       
        
        
      </div>
       <button class="btn btn-secondary" onclick="viewCart()">View Cart</button>
        <button class="btn btn-secondary" onclick="checkout()">Checkout</button>
        <button class="btn btn-secondary" onclick="continueShopping()">Continue Shopping</button>
    </div>
  </div>

  <script>
    function changeQuantity(increment) {
      var quantityInput = document.getElementById('quantity');
      var quantity = parseInt(quantityInput.value);

      if (increment) {
        quantityInput.value = quantity + 1;
      } else {
        if (quantity > 1) {
          quantityInput.value = quantity - 1;
        }
      }
    }

    function addToCart() {
      var quantityInput = document.getElementById('quantity');
      var quantity = parseInt(quantityInput.value);
      var couponCode = document.getElementById('couponCode').value;

      // Perform any necessary actions with the quantity and coupon code
      // (e.g., add the product to the cart, apply the coupon code)

      // Show success message
      var successMessage = document.getElementById('successMessage');
      successMessage.style.display = 'block';
    }

    function viewCart() {
      // Redirect to the cart page
      window.location.href = 'https://yourkoseli.com/cart/';
    }

    function checkout() {
      // Redirect to the checkout page
      window.location.href = 'https://yourkoseli.com/checkout/';
    }

    function continueShopping() {
      // Perform any necessary actions when the customer chooses to continue shopping
    }
  </script>
  
      <!-- Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>