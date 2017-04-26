<%--
  Created by IntelliJ IDEA.
  User: Назарий
  Date: 26.04.2017
  Time: 21:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" language="java" pageEncoding="UTF-8"%>
<html>
<head>
    <base href="${pageContext.request.scheme}://
    ${pageContext.request.serverName}:
    ${pageContext.request.serverPort}
    ${pageContext.request.contextPath}/" />
    <meta http-equiv="CONTENT-TYPE" content="text/html; charset=UTF-8">
    <title>Hello world</title>
</head>
<body>
    <header>
        <h1>Title : ${title}</h1>
    </header>
    <section>
        <h1>Message : ${message}</h1>
    </section>
    <div>Get <a href="protected">protected</a> resource for admin.</div>
    <div>Get <a href="confidential">confidential</a> resource for superadmin. </div>
</body>
</html>
