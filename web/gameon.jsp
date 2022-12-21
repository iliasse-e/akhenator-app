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
        <link rel="stylesheet" href="akhenatorcss.css" type="text/css"/>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" />
    </head>
    <body class="center card">
        <form action="/Akhenator/TreeGrowthServlet">
            <div class="form-group">
                <label >À quel animal pensiez-vous ?</label>
                <input class="form-control" type="text" name="newanimal" id="newanimal" required placeholder="ex: un chat">            
                <small id="emailHelp" class="form-text text-muted">espace pour code erreur</small>
            </div>

            <div class="form-group">
                <label for="question">Quelle question dois-je poser pour différencer un ${tree.currentNode.content} et votre animal ? </label>
                <input class="form-control" type="text" name="question" id="question" required placeholder="ex: A-t-il une moustache ?">
                <small id="emailHelp" class="form-text text-muted">espace pour code erreur</small>
            </div>


            <label for="question">Quelle sera la bonne réponse à votre question ? </label>
            <div class="form-check">
                <input type ="radio" class="form-check-input" value = "OUI" name ="answer">
                <label class="form-check-label" for="OUI" > OUI </label>
            </div>
            <div class="form-check">
                <input type ="radio" class="form-check-input" value = "NON" name ="answer">
                <label class="form-check-label" for="NON">NON</label> 
            </div>

            <br>
            <input class="btn btn-primary" type="submit" value="Soumettre ma réponse et retour menu">
        </form>

    </body>
    <footer>
        <div class="credit">Proudly made by : Iliasse, Morgane and Thibault </div>
    </footer>
</html>

