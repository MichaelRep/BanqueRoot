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
        <link rel="stylesheet" href="style.css">
        
    </head>
    <body>
        <%@include file = "menuSuperieur.jsp" %>


        <h1 class="gTitre">BanqueROOT, la banque pour tracer ta route!</h1>
        <br>
        <br>
        

        <div class="container">
            <div class="row">
                <div class="col-sm-2"></div>

                <div class="col-sm-4 text-center">
                    <div class="card" style="width: 18rem;">
                        <h5 class="text-center titr">Connexion </h5>
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
                                
                            </form>
                            <p> ${msg}</p>
                        </div>
                    </div>
                </div>

                <div class="col-sm-4 text-center">
                    <div class="card" style="width: 18rem;">
                        <h5 class="text-center titr">Inscription nouveau client</h5>
                        <hr>
                        <h5 class="text-center"> </h5>
                        <br>
                        <div>
                            <form action="inscription" method="POST">
                                <div class="form-group">
                                    <input name="nom" type="text" placeholder="nom" class="form-control">
                                </div>
                                <div class="form-group">
                                    <input name="prenom" type="text" placeholder="prenom" class="form-control">
                                </div>
                                <div class="form-group">
                                    <input name="login" type="text" placeholder="login" class="form-control">
                                </div>
                                <div class="form-group">
                                    <input name="mdp" type="password" placeholder="password" class="form-control">
                                </div>

                                <button type="submit" class="btn btn-primary btn-block">Pas encore pret!!!!!!</button>
                                
                            </form>
                            <p> ${msg}</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>





    </body>
</html>
