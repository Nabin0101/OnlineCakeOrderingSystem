<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="icon"  href="https://cdn-icons-png.flaticon.com/128/2682/2682446.png"  type="image/x-icon">
<title>Cake Confections Nepal</title>
<%@include file="header.jsp" %>


<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<style>
  /* Home section styles */
  .home-section {
    position: relative;
    height: 91.5vh;
    overflow: hidden;
  }

  .background-image {
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    background-position: center;
    opacity: 0.8;
  }

  .content-wrapper {
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
    text-align: center;
    color: #fff;
  }

  .slogan {
    font-size: 30px;
    margin-bottom: 20px;
    color:White;
  }

  .order-now-button {
    background-color: yellow;
    color: #333;
    padding: 10px 20px;
    border: none;
    font-size: 20px;
    cursor: pointer;
  }

  .other-section{
  padding-top: 25px;}
  
  .heading{
  width:90%;
  display:flex;
  justify-content: center;
  align-items:center;
  flex-direction:column;
  text-align:center;
  margin:20px  auto;
  }
  
   .heading h1{
   font-size:50px;
   color:#000;
   margin-bottom:25px;
   position: relative;
   }
    .heading h1::after{
    content: "";
    position:absolute;
    width:100%;
    height: 4px;
    display:block;
    margin: 0 auto;
    background-color: #4caf50;
    }
    
     .heading p{
     font-size: 18px;
     color: #666;
     margin-bottom: 35px;
     }
     
     .container{
     width:90%;
     margin: 0 auto;
     padding: 10px 20px;
     }
     .about{
     display:flex;
     justify-content:space-between;
     align-items:center;
     flex-wrap: wrap;
     }
     
     .about-image{
     flex:1;
     margin-right: 40px;
     overflow: hidden;
     }
     .about-image img{
     max-width:100%;
     height: 70%;
     display: block;
     transition: 0.5 ease;
     }
     .about-image:hover img{
     transform:scale(1.2);
     }
     .about-content{
     flex: 1;
     }
     .about-content h2{
     font-size:23px;
     margin-bottom: 15px;
     color: #333;
     }
     .about-content p{
     font-size: 18px;
     line-height: 1.5;
     color:#666;
     }
     .about-content .read-more{
     display:inline  block;
     padding: 10px 20px;
     background-color:#4caf50;
     color:#fff;
     font-size:10px;
     text-decoration: none;
     border-radius: 25px;
     margin-top:15px;
     transition: 0.3s ease;
     }
     .about-content .read-more::hover{
     background-color:#3e8e41;
     }
     
     footer {
	background: #101010;
	padding: 50px 0;
}
.single-content {
	text-align: center;
	padding: 115px 0;
}
.single-box p {
	color: #fff;
	line-height: 1.9;
}
.single-box h3 {
	font-size: 16px;
	font-weight: 700;
	color: #fff;
}
.single-box .card-area i {
	color: #ffffff;
	font-size: 20px;
	margin-right: 10px;
}
.single-box ul {
	list-style: none;
	padding: 0;
	text-decoration: none;
	color: #fff;
	line-height: 2.5;
	font-weight: 100;
}
.single-box ul li a{
text-decoration: none;
	color: #fff;
	line-height: 2.5;
	font-weight: 100;
}
.single-box h2 {
	color: #fff;
	font-size: 20px;
	font-weight: 700;
}
#basic-addon2 {
	background: #fe1e4f;
	color: #fff;
}
.socials i {
	font-size: 18px;
	margin-right: 15px;
}
.card-area img{
height:30px;
width:35px;
}
span{
color: #fff;
line-height: 1.9;
text-align: center;
}
</style>

</head>
<body>

<div class="home-section">
  <div class="background-image">
  <img alt="Homepage image" src="https://images.wallpaperscraft.com/image/single/coffee_cookies_cup_905731_1920x1080.jpg">
  </div>
  <div class="content-wrapper">
    <h1 class="slogan">A cake so yummy, it will fill your tummy.</h1>
    <button class="order-now-button" >Order Now</button>
  </div>
</div>


<div class="other-section">
<h3> Celebrate Mothers day  with a delicious Cake</h3>
<div class="card-row">
<div class="card card-row-items" style="width: 18rem;">
  <img src="https://yourkoseli.com/wp-content/uploads/2023/03/27995_08-29-2022_13-47-00_name_003I-Love-You-Mommy-Bento-Cake-is-a-perfect-cake-to-celebrate-mom-birthday-banner_11zon.jpeg" class="card-img-top" alt="...">
  <div class="card-body">
    <p class="card-text custom-text1">I love you Mummy Bento Cake</p>
    <p class="custom-text" >NPR600</p>
        <div class="add-to-cart">
    <i class="fas fa-shopping-cart"></i>
  </div>
</div>
  </div>
<div class="card card-row-items" style="width: 18rem;">
  <img src="https://yourkoseli.com/wp-content/uploads/2023/03/p-chocostar-cream-cake-half-kg-175492-1_11zon-768x768.jpeg" class="card-img-top" alt="...">
  <div class="card-body">
    <p class="card-text custom-text1">Chocolate Truffle Mothers Day Cake</p>

    <p class="custom-text">NPR1,050</p>
        <div class="add-to-cart">
    <i class="fas fa-shopping-cart"></i>
  </div>

  </div>
  </div>
<div class="card card-row-items" style="width: 18rem;">
  <img src="https://yourkoseli.com/wp-content/uploads/2023/03/p-mother-s-day-pink-roses-cream-cake-half-kg-175478-m_11zon-768x768.jpeg" class="card-img-top" alt="...">
  <div class="card-body">
    <p class="card-text custom-text1">Pink Floral Mothers Day Cake(2 Pounds)</p>

    <p class="custom-text">NPR1,900</p>
        <div class="add-to-cart">
    <i class="fas fa-shopping-cart"></i>
  </div>

  </div>
  </div>
<div class="card card-row-items" style="width: 18rem;">
  <img src="https://yourkoseli.com/wp-content/uploads/2022/03/GTI22711_11zon-768x768.jpeg" class="card-img-top" alt="...">
  <div class="card-body">
    <p class="card-text custom-text1">Elegant Mothers Day Cake</p>

    <p class="custom-text">NPR950</p>
    <div class="add-to-cart">
    <i class="fas fa-shopping-cart"></i>
  </div>
  </div>
</div>
<div class="card card-row-items" style="width: 18rem;">
  <img src="https://yourkoseli.com/wp-content/uploads/2022/03/GTI424899_11zon-768x768.jpeg" class="card-img-top" alt="...">
  <div class="card-body">
    <p class="card-text custom-text1">Sweet Mothers Day Cake</p>
    <p class="custom-text">NPR1,800</p>
    <div class="add-to-cart">
    <i class="fas fa-shopping-cart"></i>
  </div>
  </div>
</div>
<div class="card card-row-items" style="width: 18rem;">
  <img src="https://yourkoseli.com/wp-content/uploads/2023/03/p-peach-rosette-cream-cake-for-mom-half-kg-175475-m_11zon-768x768.jpeg" class="card-img-top" alt="...">
  <div class="card-body">
    <p class="card-text custom-text1">Peach Creamy Mothers Day Cake ( 2 Pound )</p>
    <p class="custom-text">NPR2,200</p>
    <div class="add-to-cart">
    <i class="fas fa-shopping-cart"></i>
  </div>
  </div>
</div>
<div class="card card-row-items" style="width: 18rem;">
  <img src="https://yourkoseli.com/wp-content/uploads/2023/03/p-mix-fruit-cake-for-mother-s-day-half-kg-135605-m_11zon-768x768.jpeg" class="card-img-top" alt="...">
  <div class="card-body">
    <p class="card-text custom-text1">Delicious Mothers Day Cake</p>
    <p class="custom-text">NPR1,050</p>
    <div class="add-to-cart">
    <i class="fas fa-shopping-cart"></i>
  </div>
  </div>
</div>
<div class="card card-row-items" style="width: 18rem;">
  <img src="https://yourkoseli.com/wp-content/uploads/2022/03/48217_11zon.jpeg" class="card-img-top" alt="...">
  <div class="card-body">
    <p class="card-text custom-text1">Fruity Mothers Day Cake</p>
    <p class="custom-text">NPR1,050</p>
    <div class="add-to-cart">
    <i class="fas fa-shopping-cart"></i>
  </div>
  </div>
</div>

</div>
</div>

<div class="MiniCake-section">
<h3>Mini Cake in Nepal</h3>
<div class="card-row">
<div class="card card-row-items" style="width: 18rem;">
  <img src="https://yourkoseli.com/wp-content/uploads/2022/09/m_IMG_5405_9e4372b0-0357-4128-b928-9e1f7b75a2d2_800x_11zon.jpeg" class="card-img-top" alt="...">
  <div class="card-body">
    <p class="card-text custom-text1">Delectable Mini Macaron Cake</p>
    <p class="custom-text" >NPR750</p>
        <div class="add-to-cart">
    <i class="fas fa-shopping-cart"></i>
  </div>
</div>
  </div>
<div class="card card-row-items" style="width: 18rem;">
  <img src="https://yourkoseli.com/wp-content/uploads/2022/09/IMG_5404_2c7ef612-2f7f-4cfb-8de0-0966e75747c9_800x-1_11zon-768x768.jpeg" class="card-img-top" alt="...">
  <div class="card-body">
    <p class="card-text custom-text1">Delightful Mini Macaron Cake</p>

    <p class="custom-text">NPR750</p>
        <div class="add-to-cart">
    <i class="fas fa-shopping-cart"></i>
  </div>

  </div>
  </div>
<div class="card card-row-items" style="width: 18rem;">
  <img src="https://yourkoseli.com/wp-content/uploads/2022/05/82bf2077a96292d97aa939c4bda9f25f.jpg" class="card-img-top" alt="...">
  <div class="card-body">
    <p class="card-text custom-text1">Unicorn Thermed Mini Cake</p>

    <p class="custom-text">NPR800</p>
        <div class="add-to-cart">
    <i class="fas fa-shopping-cart"></i>
  </div>

  </div>
  </div>
<div class="card card-row-items" style="width: 18rem;">
  <img src="https://yourkoseli.com/wp-content/uploads/2021/12/Mini-Cakes-Nepal-5-YourKoseli.jpg" class="card-img-top" alt="...">
  <div class="card-body">
    <p class="card-text custom-text1">Cuddly Mini Cakes</p>

    <p class="custom-text">NPR700</p>
    <div class="add-to-cart">
    <i class="fas fa-shopping-cart"></i>
  </div>
  </div>
</div>
<div class="card card-row-items" style="width: 18rem;">
  <img src="https://yourkoseli.com/wp-content/uploads/2021/12/Mini-Cakes-Nepal-1-YourKoseli.jpg" class="card-img-top" alt="...">
  <div class="card-body">
    <p class="card-text custom-text1">Hearty Red Velvet Mini Cake</p>
    <p class="custom-text">NPR850</p>
    <div class="add-to-cart">
    <i class="fas fa-shopping-cart"></i>
  </div>
  </div>
</div>
<div class="card card-row-items" style="width: 18rem;">
  <img src="https://yourkoseli.com/wp-content/uploads/2021/12/Mini-Cakes-Nepal-6-YourKoseli.jpg" class="card-img-top" alt="...">
  <div class="card-body">
    <p class="card-text custom-text1">Lovely Tall Mini Cake</p>
    <p class="custom-text">NPR700</p>
    <div class="add-to-cart">
    <i class="fas fa-shopping-cart"></i>
  </div>
  </div>
</div>

</div>
</div>

<!-- About Us Section -->
<div class="heading">
<h1>About Us</h1>
<p>At Cake Confections, we bake amazing high-quality and tasty cakes in Nepal. We are the best at our service. Always Remember Cake Confections for any occasion. You can visit Cake Confection Bakery and get to do in-house online cake shopping in Banepa.</p>
</div>
	<div class="container">
	<section class="about">
	<div class="about-image">
		<img src="https://images.unsplash.com/photo-1588195538326-c5b1e9f80a1b?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxleHBsb3JlLWZlZWR8Mnx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60" alt="image1">
	</div>
	<div class="about-content">
	<h2>Warm embrace in a cup</h2>
	<p>Cakes are bakery products that are rich in sugar, fat and eggs, and can be accompanied with a wide variety of inclusions like fruits and flavors such as vanilla extracts.They come in many varieties and are very versatile in terms of flavors, textures, shapes and colors, perfect as snack or as serving size portions on special occasions.They are typically made from soft wheat flour characterized by low protein content and high purity (mostly endosperm and starch from center of wheat kernels).</p>
	<a href="#"  class="read-more">Read More</a>
	</div>
	</section>
	</div>
	
	<!-- Customer Review Section -->
	
	
	<!-- footer -->
    <footer>
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-sm-6">
                    <div class="single-box">
                        <img src="https://cdn-icons-png.flaticon.com/128/2682/2682446.png" alt="imagelogo" height="30px" width="25px"><span> Cake Confections</span>
                    <p>We are located at the heart of Banepa city in Tindobato. We will provide 24hours services.</p>
                    <h3>We Accept</h3>
                    <div class="card-area">
                            <img src="https://cdn-icons-png.flaticon.com/128/349/349221.png" alt="visa card">
                            <img src="https://cdn-icons-png.flaticon.com/128/147/147258.png" alt="credit card">
                            <img src="https://cdn-icons-png.flaticon.com/128/2676/2676621.png" alt="mastercard">
                            <img src="https://cdn-icons-png.flaticon.com/128/196/196565.png" alt="paypal">
                    </div>
                    </div>
                </div>
                <div class="col-lg-3 col-sm-6">
                    <div class="single-box">
                        <h2>Useful Links</h2>
                    <ul>
                        <li><a href="#">About Us</a></li>
                        <li><a href="#">FAQ</a></li>
                        <li><a href="#">Services</a></li>
                        <li><a href="#">Teams</a></li>
                    </ul>
                    </div>                    
                </div>
                <div class="col-lg-3 col-sm-6">
                    <div class="single-box">
                        <h2>Contact Us</h2>
                    <ul>
                        <li> <i class=" fas fa-solid fa-phone"></i> 1234567890</li>
                       <li> <i class="fa-solid fa-location-dot"></i> Banepa-3,Kavre</li>
                       <li> <i class="fa-solid fa-envelope"></i> cake@confections.gmail.com</li>
                     
                    </ul>
                    </div>                    
                </div>
                <div class="col-lg-3 col-sm-6">
                    <div class="single-box">
                        <h2>Newsletter</h2>
                        <p> If you have any question and comments regarding about order, and cake quality. Please feel free to contact us.</p>
                        <div class="input-group mb-3">
                            <input type="text" class="form-control" placeholder="Recipient's username" aria-label="Enter your Email ..." aria-describedby="basic-addon2">
                            <span class="input-group-text" id="basic-addon2"><i class="fa fa-long-arrow-right"></i></span>
                        </div>
                        <h2>Follow us on</h2>
                        <p class="socials">
                            <i class="fa-brands fa-facebook-f"></i>
                            <i class="fa-brands fa-twitter"></i>
                            <i class="fa-brands fa-instagram"></i>
                            <i class="fa-brands fa-youtube"></i>
                            <i class="fa-brands fa-whatsapp"></i>
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </footer>
	
    <!-- Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>