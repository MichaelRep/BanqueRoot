<%-- 
    Document   : conseiller
    Created on : 26 nov. 2019, 09:44:46
    Author     : esic
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Conseiller</title>
    </head>
    <body>
        
        
        <div class="container">
            <div class="row">
                <div class="col-sm-2">       
                </div>
                <div class="col-sm-8">
                    <hr>
                </div>
                <div class="col-sm-2">       
                </div>
                <div class="col-sm-2">       
                </div>
                <div class="col-sm-8">
                    <table class="table">
                        <thead class="thead-dark">
                            <tr>
                                <th>ID</th>
                                <th>Nom</th>
                                <th>Prenom</th>
                                <th>Mail</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach items="${clientsNnValide}" var="cli">
                                <tr>
                                    <td>${cli.id}</td>
                                    <td>${cli.nom}</td>
                                    <td>${cli.prenom}</td>
                                    <td>${cli.login}</td>
                                                                      
                                </tr>
                                
                                
                            </c:forEach>
                           
                            
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
        
        
        
        
    </body>
</html>
