<%-- 
    Document   : index.jsp
    Created on : Apr 28, 2021, 8:02:29 AM
    Author     : avinash
--%>

<%@page import="com.tech.blog.helper.Connectionprovider"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %> 
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home</title>
        <!-- boststrap css link-->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link href="css/mystyle.css" rel="stylesheet" type="text/css"/>
        <style>
            .banner-background{
                clip-path: polygon(50% 0%, 100% 0, 100% 100%, 73% 93%, 39% 100%, 0 93%, 0 0);
            }
        </style>
    </head>
    <body>

        <!--nav bar--> 
        <%@include file="normal_navbar.jsp" %>

        <!--banner-->
        <div class="container-fluid p-0 m-0">
            <div class="jumbotron banner-background">
                <div class="container text-white">
                    <h3 class="display-3">Welcome, To Tech Blog</h3>
                    <p >A programming language is a formal language comprising a set of instructions that produce various kinds of output. Programming languages are used in computer programming to implement algorithms.</p>
                    <p>Most programming languages consist of instructions for computers. There are programmable machines that use a set of specific instructions, rather than general programming languages. Since the early 1800s,
                        programs have been used to direct the behavior of machines such as Jacquard looms, music boxes and player pianos.[1] The programs for these machines (such as a player piano's scrolls) 
                        did not produce different behavior in response to different inputs or conditions.</p>
                    <a href="register.jsp"> <button type="button" class="btn btn-outline-dark"><span class="fa fa-external-link"></span>Start ! Its free</button></a>  
                    <a href="login.jsp"><button type="button" class="btn btn-outline-dark"><span class="fas fa-user-plus fa-spin"></span>Login</button></a>    
                </div>
            </div>
        </div>
        <br>

        <!--card 1-->
        <div class="container mb-2">
            <div class="row">
                <div class="col-md-4">
                    <div class="card " style="width: 18rem;">
                        <div class="card-body">
                            <h5 class="card-title">Java dynamic</h5>
                            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                            <a href="#" class="btn btn-primary text-white">Read more...</a>
                        </div>
                    </div>   
                </div> 
                <div class="col-md-4">
                    <div class="card " style="width: 18rem;">
                        <div class="card-body">
                            <h5 class="card-title">Phyton dynamic</h5>
                            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                            <a href="#" class="btn btn-primary text-white">Read more...</a>
                        </div>
                    </div>   
                </div> 
                <div class="col-md-4">
                    <div class="card " style="width: 18rem;">
                        <div class="card-body">
                            <h5 class="card-title">Php dynamic</h5>
                            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                            <a href="#" class="btn btn-primary text-white">Read more...</a>
                        </div>
                    </div>   
                </div> 
            </div>
        </div>    
        <br>

        <!--card 2-->
        <div class="container mb-2">
            <div class="row">
                <div class="col-md-4">
                    <div class="card " style="width: 18rem;">
                        <div class="card-body">
                            <h5 class="card-title">Java dynamic</h5>
                            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                            <a href="#" class="btn btn-primary text-white">Read more...</a>
                        </div>
                    </div>   
                </div> 
                <div class="col-md-4">
                    <div class="card " style="width: 18rem;">
                        <div class="card-body">
                            <h5 class="card-title">Phyton dynamic</h5>
                            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                            <a href="#" class="btn btn-primary text-white">Read more...</a>
                        </div>
                    </div>   
                </div> 
                <div class="col-md-4">
                    <div class="card " style="width: 18rem;">
                        <div class="card-body">
                            <h5 class="card-title">Php dynamic</h5>
                            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                            <a href="#" class="btn btn-primary text-white">Read more...</a>
                        </div>
                    </div>   
                </div> 
            </div>
        </div>    















        <!--java scrip-->
        <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        <script src="js/myscript.js" type="text/javascript"></script>
        <script>
//           
        </script>

    </body>
</html>
