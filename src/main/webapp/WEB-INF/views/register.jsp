<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

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
