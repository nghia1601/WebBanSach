<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Detail Page</title>
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
        <style>
            .gallery-wrap .img-big-wrap img {
                height: 450px;
                width: auto;
                display: inline-block;
                cursor: zoom-in;
            }


            .gallery-wrap .img-small-wrap .item-gallery {
                width: 60px;
                height: 60px;
                border: 1px solid #ddd;
                margin: 7px 2px;
                display: inline-block;
                overflow: hidden;
            }

            .gallery-wrap .img-small-wrap {
                text-align: center;
            }
            .gallery-wrap .img-small-wrap img {
                max-width: 100%;
                max-height: 100%;
                object-fit: cover;
                border-radius: 4px;
                cursor: zoom-in;
            }
            .img-big-wrap img{
                width: 100% !important;
                height: auto !important;
            }
        </style>
    </head>
    <body>
        
        
                <header>
                    <!-- header inner -->
                    <div class="head_top">
                        <div class="header">
    
                            <div class="container-fluid">
    
                                <div class="row">
                                    <div class="col-lg-3 logo_section">
                                        <div class="full">
                                            <div class="center-desk">
                                                <div class="logo">
                                                    <!-- home and logo-->
                                                    <a href="home"><img src="images/xitrum.png" alt="#"></a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-9">
                                        <div class="right_header_info">
                                            <ul>
                                                <li class="menu_iconb">
                                                    <a href="#"><img style="margin-right: 15px;" src="icon/1.png" alt="#" />K15DCPM06</a>
                                                </li>
                                                <li class="menu_iconb">
                                                    <a href="login?action=login">Log in<img style="margin-right: 15px;" src="icon/5.png" alt="#" /> </a>
                                                </li>
                                                <li class="menu_iconb">
                                                    <a href="signup">Signup<img style="margin-left: 15px;" src="icon/6.png" alt="#" /></a>
                                                </li>
                                                <li class="tytyu">
                                                    <a href="shoppingcard"> <img style="margin-right: 15px;" src="icon/2.png" alt="#" /></a>
                                                </li>
                                                <li class="menu_iconb">
                                                    <a href="timkiem"><img style="margin-right: 15px;" src="icon/3.png" alt="#" /></a>
                                                </li>
    
                                                <li>
                                                    <button type="button" id="sidebarCollapse">
                                                        <img src="images/menu_icon.png" alt="#" />
                                                    </button>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                </header>
                <!-- Categories -->
            <div class="Categories">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="title">
                                <h2> Thể Loại </h2>
                                <ul class="categiri">
                                    <c:forEach items="${listC}" var="o">
                                        
                                        <li><a href="category?idLoai=${o.idLoai}">${o.tenLoai}</a></li>

                                    </c:forEach>    
                                </ul>
                            </div>
                        </div>
                    </div>

            <div class="container">
                <div class="row">
                
                <div class="col-sm-9">
                    <div class="container">
                        <div class="card">
                            <div class="row">
                                <aside class="col-sm-5 border-right">
                                    <article class="gallery-wrap"> 
                                        <div class="img-big-wrap">
                                            <div> <a href="#"><img src="${detail.image}"></a></div>
                                        </div> <!-- slider-product.// -->
                                        <div class="img-small-wrap">
                                        </div> <!-- slider-nav.// -->
                                    </article> <!-- gallery-wrap .end// -->
                                </aside>
                                <aside class="col-sm-7">
                                    <article class="card-body p-5">
                                        <h1 class="title mb-3">Tên Sách: ${detail.tenSach}</h1>

                                        <p class="price-detail-wrap"> 
                                            <span class="price h3 text-warning"> 
                                                <span class="currency">Giá: </span><span class="num">${detail.giaSach}</span>
                                            </span> 
                                        </p> <!-- price-detail-wrap .// -->
                                        <dl class="item-property">
                                            <dt>Mô Tả</dt>
                                            <dd><p>
                                                    ${detail.moTa}
                                                </p></dd>
                                        </dl>

                                        <hr>
                                        
                                        <hr>
                                        <a class="buynow" href="#">Add To Card</a>
                                        <a class="buynow" href="#">Buy now</a>
                                    </article> <!-- card-body.// -->
                                </aside> <!-- col.// -->
                            </div> <!-- row.// -->
                        </div> <!-- card.// -->


                    </div>
                </div>
            </div>
        </div>
       <jsp:include page="Footer.jsp"></jsp:include>
    </body>
</html>
