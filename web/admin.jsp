<%-- 
    Document   : admin
    Created on : 25 nov. 2019, 14:42:03
    Author     : esic
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="css/mycss.css">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Material+Icons">
        <link rel="stylesheet" href="https://unpkg.com/bootstrap-material-design@4.1.1/dist/css/bootstrap-material-design.min.css" integrity="sha384-wXznGJNEXNG1NFsbm0ugrLFMQPWswR3lds2VeinahP8N0zJw9VWSopbjv2x7WCvX" crossorigin="anonymous">
    </head>
    <body>

        <div class="row">

            <div class="col-sm-2"><h5> Admininistrateur </h5></div>
            <div class="col-sm-8"></div>
            <div class="col-sm-2">
                <button type="button" <%--onclick="location.href = 'deco'"--%> class="btn btn-danger">Déconnexion</button>
            </div>

        </div>

        <div class="text-center" > <h2>Liste des conseillers</h2>  </div>    
        <ul>
            <li><h6>Conseillers activés</h6></li>
            <li>24 H Chrono</li>
            <li>Peacky Blinders</li>
            <li>Game of Thrones</li>
            <li><a href="https://fr.wikipedia.org/wiki/Demon_Slayer" target="_blank">Kimetsu no Yaiba</a></li>
            <li>Comissaire Maigret</li>
        </ul>

    </body>
</html>
