<%-- 
    Document   : client
    Created on : 26 nov. 2019, 09:26:06
    Author     : esic
--%>
<%@page import="fr.solutec.model.User"%>
<%@page import="fr.solutec.model.Client"%>
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
        <h1>Votre compte</h1>
        <div class="row">

            <div class="col-sm-2"><h5> Bienvenue ${personne.prenom} ${personne.nom} ! </h5></div>
            <div class="col-sm-8"></div>
            <div class="col-sm-2">
                <button type="button" onclick="location.href = 'deco'" class="btn btn-danger">Déconnexion</button>

            </div>

        </div>
        <div class="row">

            <div class="col-sm-6 text-center"><h2>Vos infos !</h2></div>
            <div class="col-sm-2">
                <button type="button" class="btn-success">Modifier vos infos</button>
            </div>

        </div>  
        <div>
            <p>
                Nom : ${personne.nom}
            </p>
            <br>
            <p>
                Prénom : ${personne.prenom}
            </p>
            <br>
            <p>
                Mail :  ${personne.login}
            </p>
            <br>
            <p>
                Numéro de compte : 
            </p>
            <br>
            <p>
                Numéro de carte de crédit : 
            </p>
            <br>
        </div>

        <div class="row">
            <div class="col-sm-8">
                <table border="2">
                    <thead>
                        <tr>
                            <th class="text-center">Votre compte</th>
                            <th class="text-center">Montant</th>
                            <th class="text-center">Autorisation de découvert</th>
                            <th class="text-center">Carte associée</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td class="colid">2543-TR</td>
                            <td class="col2">5321.66</td>
                            <td class="col2">Non autorisé</td>
                            <td class="col3">Carte MasterCard Gold</td>

                        </tr>
                    </tbody>
                </table>
            </div>
            <div class="col-sm-4">
                <h5>Contacter votre conseiller dédié !</h5>
                <button type="button" class="btn-success">Message</button>
                <br>
                <button type="button" class="btn-success">Mail</button>
            </div>
        </div>
    </body>
</html>
