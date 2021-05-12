<%-- 
    Document   : register
    Created on : Apr 29, 2021, 8:51:40 AM
    Author     : avinash
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register</title>
        <!-- boststrap css link-->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link href="css/mystyle.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

        <style>
            .banner-background{
                clip-path: polygon(50% 0%, 100% 0, 100% 100%, 73% 93%, 39% 100%, 0 93%, 0 0);
            }
        </style>
    </head>
    <body>
        <!--nave bar-->
        <%@include file="normal_navbar.jsp" %>
        <main class="background-color banner-background p-5" style="padding-bottom: 80px">
            <div class="container  ">
                <div class="col-md-6  offset-md-3">
                    <div class="card ">
                        <div class=" card-header text-center background-color">
                            <span class="fa fa-user-circle fa-3x"></span>
                            <br><h3> Register Here!</h3>

                        </div>
                        <div class="card-body">
                            <form  id="reg-form" action="RegisterServlet" method="POST">

                                <div class="form-group">
                                    <label for="user_email">User email</label>
                                    <input name="user_email" type="email" class="form-control" id="user_email" aria-describedby="emailHelp" placeholder="Enter email">
                                    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
                                </div>


                                <div class="form-group">
                                    <label for="user_name">User name</label>
                                    <input name="user_name" type="text" class="form-control" id="user_name" aria-describedby="userHelp" placeholder="Enter name">
                                </div>

                                <div class="form-group">
                                    <label for="user_name ">Sex</label><br>
                                    <div class="form-check form-check-inline">
                                        <input class="form-check-input" type="radio" id="gender"name="sex" value="male">
                                        <label class="form-check-label" for="gender">Male</label>
                                    </div>
                                    <div class="form-check form-check-inline">
                                        <input class="form-check-input" type="radio" id="gender"name="sex" value="female">
                                        <label class="form-check-label" for="gender">Female</label>
                                    </div>


                                </div>

                                <div class="form-group">
                                    <label for="exampleInputPassword1">Password</label>
                                    <input name="user_password" type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
                                </div>

                                <div class="form-check">
                                    <input name="check" type="checkbox" class="form-check-input" id="exampleCheck1" >
                                    <label class="form-check-label" for="exampleCheck1">Terms of Service </label>
                                </div>
                                <br>
                                <br>

                                <div class="container text-center" id="loader" style="display: none;">
                                    <span class="fa fa-refresh fa-spin fa-4x"></span>
                                    <h4>Please wait..</h4>
                                </div>
                                <button id="sumbimt-btn" type="submit" class="btn btn-primary">Submit</button>
                            </form>

                        </div>
                        <div class="card-footer ">
                            <span class="sing-need">All ready Register?
                                <a href="login.jsp"><span class="mt-0"sing-up style="color: red"> Login </span></a> 
                            </span>
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
        <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>

        
       
           
        
    <script>
        $(document).ready(function () {
        console.log("loaded........")

        $('#reg-form').on('submit', function (event) {
        event.preventDefault();



        let form = new FormData(this);

        $("#sumbimt-btn").hide();
        $("#loader").show();
        //send register servlet:
        $.ajax({
        url: "RegisterServlet",
        type: 'POST',
        data: form,
        success: function (data, textStatus, jqXHR) {
        console.log(data)

        $("#sumbimt-btn").show();
        $("#loader").hide();

        if (data.trim() === 'done')
        {

        swal("Registered successfully..We are going to redirect to login page")
        .then((value) => {
        window.location = "login.jsp"
        });
        } else
        {

        swal(data);
        }

        },
        error: function (jqXHR, textStatus, errorThrown) {
        $("#sumbimt-btn").show();
        $("#loader").hide();
        swal("something went wrong..try again");

        },
        processData: false,
        contentType: false

        });



        });
        });

    </script>
</body>
</html>
