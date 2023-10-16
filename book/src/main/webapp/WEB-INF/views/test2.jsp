<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>

<!-- login -->
<!DOCTYPE html>

<html>
    <head>
        <title>
            Login Page
        </title>
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <!------ Include the above in your HEAD tag ---------->
        <style>
            body{
                background-color:#5286F3;
                font-size:14px;
                color:#fff;
            }
            .simple-login-container{
                width:300px;
                max-width:100%;
                margin:50px auto;
            }
            .simple-login-container h2{
                text-align:center;
                font-size:20px;
            }

            .simple-login-container .btn-login{
                background-color:#FF5964;
                color:#fff;
            }
            a{
                color:#fff;
            }
        </style>
    </head>
    <body>
        <div class="simple-login-container">
            <h2>Đăng Nhập</h2>
            <div class="row">
                <div class="col-md-12 form-group">
                    <input type="text" class="form-control" placeholder="Username">
                </div>
            </div>
            <div class="row">
                <div class="col-md-12 form-group">
                    <input type="password" placeholder="Password" class="form-control">
                </div>
            </div>
            <div class="row">
                <div class="col-md-12 form-group">
                    <!-- <button type="submit" class="btn btn-block btn-login" value="login" placeholder="Đăng Nhập"></button> -->
                    <input type="submit" class="btn btn-block btn-login" placeholder="Enter your Password" >
                </div>
                
            </div>
        </div>
    </body>
</html>