<%-- 
    Document   : gameon
    Created on : 19 déc. 2022, 11:54:35
    Author     : stag
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <head>
        <title>Akhenator</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" />
        <link rel="stylesheet" href="akhenatorcss.css" type="text/css"/>
    </head>
    <body class="center">
        <form action="/Akhenator/TreeGrowthServlet">
            <div class="form-group">
                <label >À quel animal pensiez-vous ?</label>
                <input class="form-control" type="text" name="newanimal" id="newanimal" required minlength="5" pattern="un.*[a-zA-Z]+" placeholder="ex : un chat">            
                <small id="errorMsg" class="form-text text-muted">doit commencer par un / une</small>
            </div>

            <div class="form-group">
                <label for="question">Quelle question dois-je poser pour différencer un ${tree.currentNode.content} et votre animal ? </label>
                <input class="form-control" type="text" name="question" id="question" required minlength="8" pattern="^.*([a-zA-Z]+( [a-zA-Z]+)+).*\?$" placeholder="ex : A-t-il une moustache ?">
                <small id="emailHelp" class="form-text text-muted">la question doit finir par "?"</small>
            </div>

            <label for="question">Quelle sera la bonne réponse à votre question ? </label>
            <div class="form-check">
                <input type ="radio" class="form-check-input" value = "OUI" name ="answer" checked>
                <label class="form-check-label" for="OUI" > OUI </label>
            </div>
            <div class="form-check">
                <input type ="radio" class="form-check-input" value = "NON" name ="answer">
                <label class="form-check-label" for="NON">NON</label> 
            </div>

            <br>
            <input class="btn btn-primary" type="submit" value="Soumettre ma réponse et retour menu">
        </form>
        <p class="star star-1"></p>
        <p class="star star-2"></p>
        <p class="star star-3"></p>
        <p class="star star-4"></p>
        <p class="star star-5"></p>
        <p class="star star-6"></p>
        <p class="star star-7 star-falling"></p>
        <p class="star star-8 star-falling"></p>
    </body>
</html>

