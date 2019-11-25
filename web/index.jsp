<%-- 
    Document   : index
    Created on : 25 nov. 2019, 12:03:34
    Author     : esic
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@include file = "menuSuperieur.jsp" %>
        
        
        <h1>Hello BanqueROOT!</h1>
        
        
        
        <div class="container">
            <h5 class="text-center">Connexion </h5>
            <hr>
            <h5 class="text-center"> </h5>
            <br>
            <div>
                <form action="login" method="POST">
                    <div class="form-group">
                        <input name="login" type="text" placeholder="login" class="form-control">
                    </div>
                    <div class="form-group">
                        <input name="mdp" type="password" placeholder="password" class="form-control">
                    </div>

                    <button type="submit" class="btn btn-primary btn-block">valider</button>
                    <button type="button" onclick="location.href='inscription'" class="btn btn-primary btn-block">Inscription</button>
                </form>
                <p> ${msg}</p>
            </div>

        </div>
        
    </body>
</html>
