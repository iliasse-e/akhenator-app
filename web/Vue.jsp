<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%-- 
    Document   : Vue
    Created on : 19 déc. 2022, 13:55:13
    Author     : Iliasse, Morgane, Thibault
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Akhenator</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">    
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" />
        <link rel="stylesheet" href="akhenatorcss.css" type="text/css"/>
    </head>
    <body class="center">
        <c:if test="${node.question==false}">
            <div class="question-container">
                <div class="question-title">Question :</div>
                <div class="box sb1">
                    <p> Est ce que c'est un ${node.content} ?</p>
                </div>

            </div>
            <section class="answer btn-group">
                <form action="/Akhenator/GameOver.html" method="GET">
                    <input class="btn btn-primary" type="submit" value="OUI">
                </form>
                <form action="/Akhenator/gameon.jsp" method="GET">
                    <input class="btn btn-primary" type="submit" value="NON">
                </form>     
            </section>
        </c:if>
        <c:if test="${node.question==true}">
            <div class="question-container">
                <div class="question-title">Question :</div>
                <div class="box sb1">
                    <p id="question-content"> ${node.content} </p>
                </div>
            </div>
            <section class="answer btn-group">
                <form action="/Akhenator/NextNodeServlet" method="GET">
                    <input type ="hidden" name ="next" value="true">
                    <input class="btn btn-primary" type="submit" value="OUI">
                </form>
                <form action="/Akhenator/NextNodeServlet" method="GET">
                    <input type ="hidden" name ="next" value="false">
                    <input class="btn btn-primary" type="submit" value="NON">
                </form>            
            </section>
        </c:if>
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
