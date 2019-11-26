<%-- 
    Document   : admin
    Created on : 25 nov. 2019, 14:42:03
    Author     : esic
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="style.css">
        <!--        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Material+Icons">
                <link rel="stylesheet" href="https://unpkg.com/bootstrap-material-design@4.1.1/dist/css/bootstrap-material-design.min.css" integrity="sha384-wXznGJNEXNG1NFsbm0ugrLFMQPWswR3lds2VeinahP8N0zJw9VWSopbjv2x7WCvX" crossorigin="anonymous">
                <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
                <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>-->

        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>



    </head>
    <body>

        <div class="row">

            <div class="col-sm-2"><h5> Admininistrateur </h5></div>
            <div class="col-sm-8"></div>
            <div class="col-sm-2">
                <button type="button" onclick="location.href = 'deco'" class="btn btn-danger">Déconnexion</button>

            </div>

        </div>
        <div class="row">

            <div class="col-sm-6 text-center"><h2>Liste des conseillers</h2></div>
            <div class="col-sm-2">
                <button type="button" class="btn-success" data-toggle ="modal" data-target="#modalCreationConseiller" <%--onclick="location.href = 'deco'"--%>>Ajouter un conseiller</button>
            </div>

        </div>  
        <ul>
            <li><h6>Conseillers activés</h6></li>
            <table border="2">
                <thead>
                    <tr>
                        <th class="text-center">id</th>
                        <th class="text-center">Nom</th>
                        <th class="text-center">Prenom</th>
                        <th class="text-center">Adresse mail</th>
                    </tr>
                </thead>
                <tbody>

                    <c:forEach items="${conseillers}" var="conseiller">

                            <tr>
                                <td>${conseiller.id}</td>
                                <td>${conseiller.nom}</td>
                                <td>${conseiller.prenom}</td>
                                <td>${conseiller.login}</td>
                            </tr>


                    </c:forEach>
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
                        <th class="text-center">id</th>
                        <th class="text-center">Nom</th>
                        <th class="text-center">Prenom</th>
                        <th class="text-center">Adresse mail</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td class="colid">1</td>
                        <td class="col2">Sarkozy</td>
                        <td class="col2">Nicolas</td>
                        <td class="col3" title="nicolas.sarkozydu75@gmail.com">nicolas.sarkozydu75@gmail.com</td>
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


        </ul>


        <div class="modal fade" id="modalCreationConseiller" role="dialog">
            <div class="modal-dialog">

                <!-- Modal content-->
                <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="modal-title">Création d'un conseiller</h4>
                    </div>
                    <div class="modal-body">
                        <form action="InscriptionConseiller" method="POST">
                            <div class="form-group">
                                <input name="nomC" type="text" placeholder="nom" class="form-control">
                            </div>
                            <div class="form-group">
                                <input name="prenomC" type="text" placeholder="prenom" class="form-control">
                            </div>
                            <div class="form-group">
                                <input name="loginC" type="text" placeholder="login" class="form-control">
                            </div>
                            <div class="form-group">
                                <input name="mdpC" type="password" placeholder="password" class="form-control">
                            </div>

                            <div class="row">
                                <div class="col-sm-6">
                                    <button type="button" class="btn btn-block btn-danger" data-dismiss="modal">Fermer</button>
                                </div>
                                <div class="col-sm-6">
                                    <button type="submit" class="btn btn-block btn-success">Valider</button>

                                </div>

                            </div>
                        </form>
                    </div>
                </div>

            </div>
        </div>

    </body>
</html>
