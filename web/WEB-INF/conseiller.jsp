
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="style.css">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Material+Icons">
        <link rel="stylesheet" href="https://unpkg.com/bootstrap-material-design@4.1.1/dist/css/bootstrap-material-design.min.css" integrity="sha384-wXznGJNEXNG1NFsbm0ugrLFMQPWswR3lds2VeinahP8N0zJw9VWSopbjv2x7WCvX" crossorigin="anonymous">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>



    </head>
    <body>

        <div class="row">

            <div class="col-sm-2"><h5> Page du conseiller </h5></div>
            <div class="col-sm-8"></div>
            <div class="col-sm-2">
                <button type="button" onclick="location.href = 'deco'" class="btn btn-danger">Déconnexion</button>

            </div>

        </div>
        <div class="row">

            <div class="col-sm-6 text-center"><h2>Liste des Clients</h2></div>


        </div>  
        <ul>
            <li><h6>Clients en Attente </h6></li>
            <table border="2">
                <thead>
                    <tr>
                        <th class="text-center">id</th>
                        <th class="text-center">Nom</th>
                        <th class="text-center">Prenom</th>
                        <th class="text-center">Adresse mail</th>
                        <th class="text-center">ac mail</th>
                    </tr>
                </thead>
                <tbody>

                    <c:forEach items="${clientsEnAttente}" var="clientEnAttente">
                    <form action="ValidationClient" method="POST">
                        <tr>
                        
                        <input type="hidden" name="id" value="${clientEnAttente.id}">
                        <td>${clientEnAttente.id}</td>
                        <td>${clientEnAttente.nom}</td>
                        <td>${clientEnAttente.prenom}</td>
                        <td>${clientEnAttente.login}</td>
                        <td>
                            <button type="submit" class="btn-validation">Activer</button>
                        </td>

                        </tr>

                    </form>
                </c:forEach>


                </tr>
                <tr></tr>
                <tr></tr>

                </tbody>
            </table>


            <li><h6>Clients Validés </h6></li>
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

                    <c:forEach items="${clientsValide}" var="client">
                    <form action="ConseillerConsultationClient" method="GET">
                        <tr>
                            <td>${client.id}</td>
                            <td>${client.nom}</td>
                            <td>${client.prenom}</td>
                            <td>${client.login}</td>
                            
                            <td>
                                <%--<input type="button" src="/Images/croixrouge.jpg"/>
                                <button style="background: url(/Images/croixrouge.jpg)"/>--%>
                                <button class="btn-validation">Consulter</button>
                            </td>

                        </tr>
                    </form>

                </c:forEach>


                </tr>
                <tr></tr>
                <tr></tr>

                </tbody>
            </table>



        </ul>



    </body>
</html>
