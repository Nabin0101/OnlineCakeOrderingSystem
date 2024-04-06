<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="icon"  href="https://cdn-icons-png.flaticon.com/128/2682/2682446.png"  type="image/x-icon">
<title>Add to Cart</title>
<%@include file="header.jsp" %>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<meta charset="ISO-8859-1">
<style>
.container{
padding-top: 20px;
padding-bottom:20px;
}
 .add-to-cart-form {
      display: flex;
      align-items: flex-start;
    }

    .cake-image {
      width: 250px;
      margin-right: 20px;
    }

    .form-details {
      flex-grow: 1;
    }
    h1{
    text-align:center;
    }
    .custom-text{
    color:red;
    font-size: 30px;}
    .show_required{
    color:red;}
    .form-group ,.form-check-input{
    padding-left:10px;
    }
</style>
<script>
function showImageForm() {
  document.getElementById('imageForm').style.display = 'block';
}

function hideImageForm() {
  document.getElementById('imageForm').style.display = 'none';
}


document.getElementById('addToCartButton').addEventListener('onclick', function() {
    window.location.href = 'AddtoCartCupon.jsp';
});

function previewImage(event) {
	  var input = event.target;
	  if (input.files && input.files[0]) {
	    var reader = new FileReader();
	    reader.onload = function(e) {
	      var imagePreview = document.getElementById('imagePreview');
	      imagePreview.src = e.target.result;
	      imagePreview.style.display = 'block';
	    };
	    reader.readAsDataURL(input.files[0]);
	  }
	}

</script>
</head>
<body>
<div class="container">
    <h1>Black Forest With Fruits Toppings</h1>
    <form class="add-to-cart-form" action="AddtocartController"  method="post" enctype="multipart/form-data">
      <img class="cake-image" src="https://yourkoseli.com/wp-content/uploads/2023/02/75596_11zon.jpeg" alt="Cake Image">
      <div class="form-details">
        <p class="custom-text">NPR950</p>
        <div class="form-group">
          <label class="form-control-label" for="what_to_write_on_this_cake_">What to write on this cake?<span class="show_required"> *</span></label><br>
			<input type="text" name="writeoncake" placeholder="Happy Birthday _______" >        
        </div>
        <div class="form-group ">
             <label class="form-check-label" for="eggless">Make it Eggless?</label><br>
             <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault1"/>
 			 <label class="form-check-label" for="flexRadioDefault1"> Yes(+NRP100) </label><br>
 			 <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault2" />
 			 <label class="form-check-label" for="flexRadioDefault2"> No </label>
        </div>
        <div class="form-group ">
             <label class="form-check-label" for="eggless">Do you need Sugarless?</label><br>
             <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault1" />
 			 <label class="form-check-label" for="flexRadioDefault1"> Yes(+NRP50) </label><br>
 			 <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault2" />
 			 <label class="form-check-label" for="flexRadioDefault2"> No </label>
        </div>
      <div class="form-group ">
  			<label class="form-check-label" for="eggless">Add image in Cake?</label><br>
  			<input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault1" onclick="showImageForm()"/>
 			 <label class="form-check-label" for="flexRadioDefault1"> Yes(+NRP300) </label><br>
 			 <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault2" onclick="hideImageForm()" checked/>
 				 <label class="form-check-label" for="flexRadioDefault2"> No </label>
</div>
        
        <div class="form-group" id="imageForm" style="display: none;">
  <label for="cakeImage">Add Image on the Cake</label>
  <input type="file" class="form-control-file" id="cakeImage" onchange="previewImage(event)">
  <img id="imagePreview" src="" alt="Image Preview" style="max-width: 200px; display: none;">
</div>

        <div class="form-group">
          <label for="items">Items</label>
          <input type="number" class="form-control" id="items" placeholder="Number of Items">
        </div>
        <div class="form-group">
          <label for="totalAmount">Total Amount</label>
          <input type="text" class="form-control" id="totalAmount" placeholder="Total Amount" readonly>
        </div>
        
        <div class="quantity">
			<input type="button" value="-" class="minus">
			<label class="screen-reader-text" for="quantity_6481cfe7de4ab"></label>
			<input type="number" id="quantity_6481cfe7de4ab" class="input-text qty text" value="1" title="Qty" min="1" max="" name="quantity" step="1" placeholder="" inputmode="numeric" autocomplete="off">
			<input type="button" value="+" class="plus">
			<button type="submit" class="btn btn-primary"  id="addToCartButton" >Add to Cart</button>
		</div>
      		
      </div>
    </form>
  </div>

    <!-- Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>