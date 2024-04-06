<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="icon"  href="https://cdn-icons-png.flaticon.com/128/2682/2682446.png"  type="image/x-icon">
<title>Add to product Form</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<meta charset="ISO-8859-1">
</head>
<body>
<div class="container">
    <div class="row">
      <div class="col-md-6">
        <img src="https://cookingchew.com/wp-content/uploads/2022/05/Birthday-Cake-Ideas-CO1806-FE-min.jpg" class="img-fluid" alt="Image">
        <h1> Please input the correct details of your contact information  and items description.Only the valid ones will be accepted</h1>
      </div>
      <div class="col-md-6">
        <h2> Form to add product</h2>
        <form action="VenderController" method="post" enctype="multipart/form-data">
          <div class="form-group">
            <label for="name">Name:</label>
            <input type="text" class="form-control" name="name" placeholder="Enter your name">
          </div>
          <div class="form-group">
            <label for="shopname">Shop Name:</label>
            <input type="text" class="form-control" name="shopname" placeholder="Enter your Shop name">
          </div>
          <div class="form-group">
            <label for="pannumber">PAN Number:</label>
            <input type="text" class="form-control" name="pannumber" placeholder="Enter your shop PAN Number">
          </div>
          <div class="form-group">
            <label for="shopaddress">Address:</label>
            <input type="text" class="form-control" name="shopaddress" placeholder="Enter your shop address">
          </div>
          <div class="form-group">
            <label for="contactnumber">Contact Number:</label>
            <input type="text" class="form-control" name="contactnumber" placeholder="Enter your shop contact number">
          </div>
          	
          <div class="form-group">
            <label for="image">Image:</label>
            <input type="file" class="form-control" name="images">
          </div>
          <div class="form-group">
            <img id="imagePreview" src="#" alt="Preview" style="display: none; max-width: 200px; max-height: 200px;">
          </div>
          <div class="form-group">
            <label for="price">Price:</label>
            <input type="text" class="form-control" name="price" placeholder="Enter price of items">
          </div>
          <div class="form-group">
            <label for="productname">Product Name:</label>
            <input type="text" class="form-control" name="productname" placeholder="Enter category of the product">
          </div>
          <div class="form-group">
    		<label for="category">Category:</label><br>
    		<label><input type="radio" name="category" value="blackforest"> Blackforest</label><br>
    		<label><input type="radio" name="category" value="blueberry"> Blueberry</label><br>
   			 <label><input type="radio" name="category" value="butterscotch"> Butterscotch</label><br>
		</div>
          <button type="submit" class="btn btn-primary">Add product</button>
        </form>
        <div id="message" style="display: none; margin-top: 20px;">
          Your product is being reviewed. Please wait a few minutes, and we will notify you after adding the product.
        </div>
        
      </div>
    </div>
  </div>

    <!-- Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>