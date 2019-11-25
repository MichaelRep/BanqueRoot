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
        <div class="row">

            <div class="col-sm-6 text-center"><h2>Liste des conseillers</h2></div>
            <div class="col-sm-2">
                <button class="btn-success" <%--onclick="location.href = 'deco'"--%>>Ajouter un conseiller</button>
            </div>

        </div>  
        <ul>
            <li><h6>Conseillers activés</h6></li>
            <table border="2">
                <thead>
                    <tr>
                        <th>id</th>
                        <th>Nom</th>
                        <th>Prenom</th>
                        <th>Adresse mail</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>1</td>
                        <td>Sarkozy</td>
                        <td>Nicolas</td>
                        <td>nicolas.sarkozydu75@gmail.com</td>
                        <td>
                            <%--<input type="button" src="/Images/croixrouge.jpg"/>
                            <button style="background: url(/Images/croixrouge.jpg)"/>--%>
                            <button class="btn-danger">désactiver</button>
                        </td>
                        <td>
                            <%--<input type="button" src="/Images/croixrouge.jpg"/>
                            <button style="background: url(/Images/croixrouge.jpg)"/>--%>
                            <button class="btn-warning">modifier</button>
                        </td>
                        <td>
                            <%--<input type="button" src="/Images/croixrouge.jpg"/>
                            <button style="background: url(/Images/croixrouge.jpg)"/>--%>
                            <button class="btn-danger">supprimer</button>
                        </td>
                        
                    </tr>
                    <tr></tr>
                    <tr></tr>
                        
                </tbody>
            </table>
            <li><h6>Conseillers désactivés</h6></li>
            <table border="2">
                <thead>
                    <tr>
                        <th>id</th>
                        <th>Nom</th>
                        <th>Prenom</th>
                        <th>Adresse mail</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>1</td>
                        <td>Hollande</td>
                        <td>François</td>
                        <td>francois.hollandedu75@gmail.com</td>
                        <td>
                            <%--<input type="button" src="/Images/croixrouge.jpg"/>
                            <button style="background: url(/Images/croixrouge.jpg)"/>--%>
                            <button class="btn-success">activer</button>
                        </td>
                        <td>
                            <%--<input type="button" src="/Images/croixrouge.jpg"/>
                            <button style="background: url(/Images/croixrouge.jpg)"/>--%>
                            <button class="btn-warning">modifier</button>
                        </td>
                        <td>
                            <%--<input type="button" src="/Images/croixrouge.jpg"/>
                            <button style="background: url(/Images/croixrouge.jpg)"/>--%>
                            <button class="btn-danger">supprimer</button>
                        </td>
                        
                    </tr>
                    <tr></tr>
                    <tr></tr>
                        
                </tbody>
            </table>
        </ul>

    </body>
</html>
