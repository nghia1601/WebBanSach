<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>

<div class="wrapper">

    <!-- end loader -->
    <div class="sidebar">
        <!-- Sidebar  -->
        <nav id="sidebar">

            <div id="dismiss">
                <i class="fa fa-arrow-left"></i>
            </div>

            <ul class="list-unstyled components">

                <li class="active">
                    <!-- home -->
                    <a href="#">Home</a>
                </li>
                <li>
                    <a href="#sachcode">SÁCH CODE</a>
                </li>
                <li>
                    <a href="#tieuthuyet">TIỂU THUYẾT</a>
                </li>
                <li>
                    <a href="#tutruyen">TỰ TRUYỆN</a>
                </li>
                <li>
                    <a href="#tamly">TÂM LÝ</a>
                </li>
            </ul>

        </nav>
    </div>

    <div id="content">
        <!-- header -->
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
                                        <c:if test="${sessionScope.acc == null}">
                                            <li class="menu_iconb">
                                                <a href="login?action=login">Đăng Nhập<img style="margin-right: 15px;" src="icon/6.png" alt="#" /> </a>
                                            </li>
                                        </c:if>
                                        <c:if test="${sessionScope.acc != null}">
                                            <li class="menu_iconb">
                                                <a href="signup">Đăng Ký<img style="margin-left: 15px;" src="icon/5.png" alt="#" /></a>
                                            </li>
                                        </c:if>
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
