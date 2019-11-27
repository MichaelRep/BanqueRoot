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


        <script>

            function recup(id) {
                document.querySelector("#idsup").value = id;
            }

            function recupAll(id, nom, prenom, login) {
                document.querySelector("#inputId").value = id;
                document.querySelector("#inputNom").value = nom;
                document.querySelector("#inputPrenom").value = prenom;
                document.querySelector("#inputLogin").value = login;

            }

        </script>




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
            <table id="tableActif" border="2">
                <thead class="thead-light">
                    <tr>
                        <th class="text-center">id</th>
                        <th class="text-center">Nom</th>
                        <th class="text-center">Prenom</th>
                        <th class="text-center">Adresse mail</th>
                    </tr>
                </thead>
                <tbody>

                    <c:forEach items="${conseillers}" var="conseiller">

                        <c:if test="${conseiller.actif==true}">
                        <form action="ChangementActifServlet" method="POST">
                            <tr>
                            <input type="hidden" name="id" value="${conseiller.id}"></input>
                            <input type="hidden" name="actif" value="${conseiller.actif}"></input>
                            <td class="colid">${conseiller.id}</td>
                            <td class="col2">${conseiller.nom}</td>
                            <td class="col2">${conseiller.prenom}</td>
                            <td class="col3">${conseiller.login}</td>
                            <td>
                                <button name="btn-activate" class="btn-danger"  >désactiver</button>

                            </td>

                            <td>
                                <button type="button" class="btn-warning" data-toggle="modal" onclick="recupAll(${conseiller.id}, '${conseiller.nom}', '${conseiller.prenom}', '${conseiller.login}')" data-target="#modalModifConseiller" >modifier</button>
                            </td>
                            <td>
                                <button type="button" class="btn-danger" data-toggle ="modal" onclick="recup(${conseiller.id})" data-target="#modalConfirmSup" >supprimer</button>
                            </td>
                            </tr>
                        </form>

                    </c:if>




                </c:forEach>



                </tbody>
            </table>
            <li><h6>Conseillers désactivés</h6></li>

            <table id="tableInactif" border="2">
                <thead class="thead-light">
                    <tr>
                        <th class="text-center">id</th>
                        <th class="text-center">Nom</th>
                        <th class="text-center">Prenom</th>
                        <th class="text-center">Adresse mail</th>
                    </tr>
                </thead>
                <tbody>

                    <c:forEach items="${conseillers}" var="conseiller">

                        <c:if test="${conseiller.actif==false}">
                        <form action="ChangementActifServlet" method="POST">
                            <tr>
                            <input type="hidden" name="id" value="${conseiller.id}"></input>
                            <input type="hidden" name="actif" value="${conseiller.actif}"></input>
                            <td class="colid">${conseiller.id}</td>
                            <td class="col2">${conseiller.nom}</td>
                            <td class="col2">${conseiller.prenom}</td>
                            <td class="col3">${conseiller.login}</td>
                            <td>
                                <button class="btn-success"  >activer</button>
                            </td>
                            <td>
                                <button type="button" class="btn-warning" data-toggle="modal" onclick="recupAll(${conseiller.id}, '${conseiller.nom}', '${conseiller.prenom}', '${conseiller.login}')" data-target="#modalModifConseiller" >modifier</button>
                            </td>
                            <td>
                                <button type="button" class="btn-danger" data-toggle ="modal" onclick="recup(${conseiller.id})" data-target="#modalConfirmSup" >supprimer</button>
                            </td>
                            </tr>
                        </form>

                    </c:if>




                </c:forEach>



                </tbody>
            </table>


        </ul>

        <p>${msg}</p>





        <%--  mmmmmmm j --%>

        <div class="modal fade" id="modalConfirmSup" role="dialog">
            <div class="modal-dialog">

                <!-- Modal content-->
                <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="modal-title">Êtes-vous sûr de vouloir supprimer ?</h4>
                    </div>
                    <div class="modal-body">
                        <form action="SuppressionConseillerServlet" method="POST">
                            <input type="hidden" name="idsup" id="idsup" >
                            <button type="submit">oui</button>
                        </form>
                    </div>
                </div>

            </div>
        </div>

        <%--  mmmmmmm j --%>


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
                                <input required="required" name="nomC" type="text" placeholder="nom" class="form-control">
                            </div>
                            <div class="form-group">
                                <input required="required" name="prenomC" type="text" placeholder="prenom" class="form-control">
                            </div>
                            <div class="form-group">
                                <input required="required" name="loginC" type="text" placeholder="login" class="form-control">
                            </div>
                            <div class="form-group">
                                <input required="required" name="mdpC" type="password" placeholder="password" class="form-control">
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


        <%--  mmmmmmm j --%>



        <div class="modal fade" id="modalModifConseiller" role="dialog">
            <div class="modal-dialog">

                <!-- Modal content-->
                <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="modal-title">Modification d'un conseiller</h4>
                    </div>
                    <div class="modal-body">
                        <form action="ModifConseillerServlet" method="POST">
                            <input type="hidden" id="inputId" name="idCo">
                            <div class="form-group">
                                <input id="inputNom" required="required" name="nomCo" type="text" placeholder="nom" class="form-control">
                            </div>
                            <div class="form-group">
                                <input id="inputPrenom" required="required" name="prenomCo" type="text" placeholder="prenom" class="form-control">
                            </div>
                            <div class="form-group">
                                <input id="inputLogin" required="required" name="loginCo" type="text" placeholder="Adresse mail" class="form-control">
                            </div>
                            <div class="form-group">
                                <input id="inputPassword" required="required" name="mdpCo" type="password" placeholder="Mot de passe" class="form-control">
                            </div>
                            <div class="form-group">
                                <input id="inputPassword2" required="required" name="mdpCo2" type="password" placeholder="Confirmation mot de passe" class="form-control">
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
