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
        <div>Question :</div>
        <div></div>
        <input type="submit" value="OUI">
        <input type="submit" value="NON">

        <form action="ask" method="GET">
            <label for="question">Quelle question dois-je poser pour différencer un ${node1.content} et un ${node2.content} ? </label>
            <input type="text" name="question" id="question">


            </body>
            <footer>
                <div>Proudly made by : Iliasse, Morgane and Thibault </div>
            </footer>
</html>
