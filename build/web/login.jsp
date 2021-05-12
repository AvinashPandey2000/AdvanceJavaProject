<%-- 
    Document   : login
    Created on : Apr 29, 2021, 7:28:35 AM
    Author     : avinash
--%>

<%@page import="com.tech.blog.entity.Message"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
        <!-- boststrap css link-->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link href="css/mystyle.css" rel="stylesheet" type="text/css"/>
        <link rel="preconnect" href="https://fonts.gstatic.com">
        <link href="https://fonts.googleapis.com/css2?family=Freckle+Face&display=swap" rel="stylesheet">
        <style>
            .banner-background{
                clip-path: polygon(50% 0%, 100% 0, 100% 100%, 73% 93%, 39% 100%, 0 93%, 0 0);
            }
            .loss-font{
                font-family: 'Roboto', sans-serif;            }
            .sing-need{
                font-size:14px;
                font-family:Source Sans pro; 
            }
            .sing-up{
                color: #04aa6d;
                font-weight: 600;
                display: inline-block;
                margin-left: 6px;
                cursor: pointer;
                font-size:14px;
            }
        </style>

    </head>
    <body>
        <%@include file="normal_navbar.jsp" %>

        <main class="d-flex align-items-center banner-background "style="height: 80vh ;padding-top: 50px " >
            <div class="container">
                <div class="row">
                    <div class="col-md-4 offset-md-4">
                        <div class="card" style="padding-bottom: 50px">
                            <div class="card-header background-color loss-font text-center text-white">
                                <h3><span class="fas fa-user-plus fa-3x  "></span>
                                    <br>
                                    Login Page
                                </h3>
                            </div>
                            
                            <%
                            Message m= (Message)session.getAttribute("msg");
                            if(m!=null){
                            %>

                            <div class="alert <%=m.getCssClass() %> " role="alert">
                                 <%= m.getContent()%>
                            </div>
                            
                            <%
                                session.removeAttribute("msg");
                            }
                            %>
                            

                            <div class="card-body">
                                <form action="LoginServlet" method="post">

                                    <div class="form-group">
                                        <label for="exampleInputEmail1">Email address</label>
                                        <input name="email" required type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">
                                        <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
                                    </div>

                                    <div class="form-group">
                                        <label for="exampleInputPassword1">Password</label>
                                        <input name="password" required type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
                                    </div>

                                    <div class="container text-center">
                                        <button type="submit" class="btn btn-primary mb-3">Submit</button>
                                    </div>

                                    <div class="card-footer ">
                                        <a href="#"> <h5 class="mt-2">Forgot password?</h5> </a>
                                        <span class="sing-need">Need an account?
                                            <a href="register.jsp"><span class="mt-0"sing-up style="color: red"> Sing up </span></a> 
                                        </span>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </main>


        <!--java scrip-->
        <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        <script src="js/myscript.js" type="text/javascript"></script>

    </body>
</html>
