<%-- 
    Document   : errorpage
    Created on : May 5, 2021, 4:39:59 PM
    Author     : avinash
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page isErrorPage="true" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
                <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

        <title>Sorry Someting went Wrong</title>
    </head>
    <body>
        <div class="container text-center">
            <img src="img/error.png" class="img-fluid">
            <h3 class="display-3">Sorry !! Some thing went wrong......</h3>
            
            <a href="index.jsp"> <button class="btn btn-lg text-white btn-primary" >Home</button> </a> 
            <%= exception %>
        </div>
    </body>
</html>
