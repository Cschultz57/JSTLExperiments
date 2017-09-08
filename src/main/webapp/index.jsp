<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>JSTL EXPERIMENTS</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <h1>forEach and EL test demo</h1>
        <%
        String[] beers = {"Spotted Cow", "Corona", "PBR", "Guiness"};
        %>
    <c:if test="${sessionScope.beers.numberOfItems > 0}">
        <c:forEach var="beer" items="${sessionScope.beers.items}">
        <li>${fn:toUpperCase(beers[beer])}</li>
        </c:forEach>
    </c:if>
        <br><p>beer test</p><br>
        <form id="form" name="form" method="POST" action="reply">
            
        </form>
    </body>
</html>