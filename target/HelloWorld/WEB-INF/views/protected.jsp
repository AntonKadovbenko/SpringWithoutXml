<%--
  Created by IntelliJ IDEA.
  User: Назарий
  Date: 26.04.2017
  Time: 21:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page isELIgnored="false" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <base href="${pageContext.request.scheme}://
    ${pageContext.request.serverName}:
    ${pageContext.request.serverPort}
    ${pageContext.request.contextPath}/" />
    <meta http-equiv="CONTENT-TYPE" content="text/html; charset=UTF-8">
    <title>Protected page</title>
</head>
<body>
    <h1>Title : ${title}</h1>
    <h1>Message : ${message}</h1>

    <c:if test="${pageContext.request.userPrincipal.name != null}">
    <h2>Welcome : ${pageContext.request.userPrincipal.name}
            <%--@elvariable id="_csrf" type="org.springframework.web.bind.MissingServletRequestParameterException"--%>
        <c:url var="logoutUrl" value="/logout" />
        <form action="${logoutUrl}" id="logout" method="post">
            <input type="hidden" name="${_csrf.parameterName}"
                   value="${_csrf.token}" />
            <input type="submit" name="submit" value="Log Out">
        </form>
        </c:if>
    </h2>
    <div>Get <a href="protected">protected</a> resource for admin.</div>
    <div>Get <a href="confidential">confidential</a> resource for superadmin.</div>

</body>
</html>
