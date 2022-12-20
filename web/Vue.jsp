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
        <link rel="stylesheet" href="akhenatorcss.css" type="text/css"/>
    </head>
    <body>
    <c:if test="${node.question==false}">
        <div>Question :</div>
        <div> Est ce que c'est un ${node.content} ?</div>
        <form action="/Akhenator/GameOver.html" method="GET">
            <input type="submit" value="OUI">
        </form>
        <form action="/Akhenator/gameon.jsp" method="GET">
            <input type="submit" value="NON">
        </form>
    </c:if>
        <c:if test="${node.question==true}">
            <div>Question :</div>
        <div> ${node.content} </div>
        <form action="/Akhenator/NextNodeServlet" method="GET">
            <input type ="hidden" name ="next" value="true">
            <input type="submit" value="OUI">
        </form>
        <form action="/Akhenator/NextNodeServlet" method="GET">
            <input type ="hidden" name ="next" value="false">
            <input type="submit" value="NON">
        </c:if>
    </body>
    <footer>
        <div>Proudly made by : Iliasse, Morgane and Thibault </div>
    </footer>
</html>
