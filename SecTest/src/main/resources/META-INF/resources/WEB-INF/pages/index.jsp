<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <head>
        <title>Prog.kiev.ua</title>
    </head>
<body>
<div align="center">
    <h1>Your login is: ${login}, your roles are:</h1>
    <c:forEach var="s" items="${roles}">
        <h3><c:out value="${s}"/></h3>
    </c:forEach>

    <c:if test="${admin}">
        <c:url value="/admin" var="adminUrl"/>
        <p><a href="${adminUrl}">Click</a> for admin page</p>
    </c:if>

    <c:url value="/update" var="updateUrl"/>
    <form action="${updateUrl}" method="POST" enctype="multipart/form-data">
        E-mail:<br/><input type="text" name="email" value="${email}"/><br/>
        Phone:<br/><input type="text" name="phone" value="${phone}"/><br/>
        Address:<br/><input type="text" name="address" value="${address}"/><br/>
        Photo:<br/><input type="file" name="photo" value="${photo}" accept="image/*"/><br/>

        <c:if test="${photoCh ne 0}">
            <img src="data:image/*;base64,${base64}" alt ="${photo}" height="300">
            <p>
                the path to file is ${src}/src/main/resources/photos/${photo}
            </p>
        </c:if>
        <input type="submit" value="Update"/>
    </form>

    <c:url value="/logout" var="logoutUrl"/>
    <p>Click to logout: <a href="${logoutUrl}">LOGOUT</a></p>
</div>
</body>
</html>
