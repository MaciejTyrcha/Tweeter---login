<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: Michał Kupisiński
  Date: 31.08.2018
  Time: 13:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Rejestracja użytkownika</title>
</head>
<body>
<div>
    <form:form method="post" modelAttribute="user">
        <fieldset>
            <legend>Podaj dane użytkownika</legend>
            <div>
                Login <form:input path="username"/>
            </div>
            <div>
                Email <form:input path="email"/>
            </div>
            <div>
                Password <form:password path="password"/>
            </div>
        </fieldset>
        <fieldset>
            <span>
                <input type="reset" value="Wyczyść"/>
            </span>
            <span>
                <input type="submit" value="Wyślij"/>
            </span>
        </fieldset>
    </form:form>
</div>
</body>
</html>
