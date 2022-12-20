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
    </head>
    <body>
        <form action="/Akhenator/TreeGrowthServlet">
            <label>À quel animal pensiez-vous ?</label>
            <input type="text" name="newanimal" id="newanimal" required>
            <br> 
            <label for="question">Quelle question dois-je poser pour différencer un ${tree.currentNode.content} et votre animal ? </label>
            <input type="text" name="question" id="question" required>
            <br>
            <label for="question">Quelle sera la bonne réponse à votre question ? </label>
            <input type ="radio" value = "OUI" name ="answer">
            <label for="OUI" > OUI </label>
            <input type ="radio" value = "NON" name ="answer">
            <label for="NON">NON</label>
            <br>
            <input type="submit" value="Soumettre ma réponse et retour menu">
        </form>

    </body>
    <footer>
        <div>Proudly made by : Iliasse, Morgane and Thibault </div>
    </footer>
</html>

