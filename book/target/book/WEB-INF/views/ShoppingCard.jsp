<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	<title>Shopping Cart</title>
		

		
		<!-- basic -->
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<!-- mobile metas -->
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta name="viewport" content="initial-scale=1, maximum-scale=1">
		
		
		
	
	
		<meta name="keywords" content="">
		<meta name="description" content="">
		<meta name="author" content="">
		<!-- bootstrap css -->
		<link rel="stylesheet" href="css/bootstrap.min.css">
		<!-- style css -->
		<link rel="stylesheet" href="css/style.css">
		<!-- Responsive-->
		<link rel="stylesheet" href="css/responsive.css">
		<!-- fevicon -->
		<link rel="icon" href="images/fevicon.png" type="image/gif" />
		<!-- Scrollbar Custom CSS -->
		<link rel="stylesheet" href="css/jquery.mCustomScrollbar.min.css">
		<!-- Tweaks for older IEs-->
		<link rel="stylesheet" href="https://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css">
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.css" media="screen">
	
</head>


<body>
	<!-- header -->
	<jsp:include page="Header.jsp"></jsp:include>
	</header>
	
	
	
	<section class="pt-5 pb-5">
		<div class="container">
		  <div class="row w-100">
			  <div class="col-lg-12 col-md-12 col-12">
				  <h3 class="display-5 mb-2 text-center">Shopping Cart</h3>
				  <p class="mb-5 text-center">
					  <i class="text-info font-weight-bold">3</i> items in your cart</p>
				  <table id="shoppingCart" class="table table-condensed table-responsive">
					  <thead>
						  <tr>
							  <th style="width:60%">Tên Sách</th>
							  <th style="width:12%">Giá</th>
							  <th style="width:10%">Số Lượng</th>
							  <th style="width:16%">Chức Năng</th>
						  </tr>
					  </thead>
					  <tbody>
						  <tr>
							  <td data-th="Product">
								  <div class="row">
									  <div class="col-md-3 text-left">
										  <img src="${card.image}" alt="" class="img-fluid d-none d-md-block rounded mb-2 shadow ">
									  </div>
									  <div class="col-md-9 text-left mt-sm-2">
										  <h4>${card.tenSach}</h4>
										  <p class="font-weight-light">${card.moTa}</p>
									  </div>
								  </div>
							  </td>
							  <td data-th="Price">$${card.giaSach}</td>
							  <td data-th="Quantity">
								  <input type="number" name="num" class="form-control form-control-lg text-center" value="1">
							  </td>
							  <td class="actions" data-th="">
								<a href="" type="button" class="btn btn-danger">Xóa</a>
								<a href="" type="button" class="btn btn-danger">Cập Nhật</a>
							  </td>
						  </tr>
						  
						  
					  </tbody>
				  </table>
				  <div class="float-right text-right">
					  <h4>Subtotal:</h4>
					  <h1>$99.00</h1>
				  </div>
			  </div>
		  </div>
		  <div class="row mt-4 d-flex align-items-center">
			  <div class="col-sm-6 order-md-2 text-right">
				  <a href="catalog.html" class="btn btn-danger mb-4 btn-lg pl-5 pr-5">Checkout</a>
			  </div>
			  <div class="col-sm-6 mb-3 mb-m-1 order-md-1 text-md-left">
				  <a type="button" class="btn btn-danger" href="product" >Tiếp Tục Mua</a>
			  </div>
		  </div>
	  </div>
	  </section>
	  
	<jsp:include page="Footer.jsp"></jsp:include>
</body>
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
</body>
</html>