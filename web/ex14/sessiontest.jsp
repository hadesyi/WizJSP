<%@ page import="java.util.Enumeration" %>
<%--
  Project: WizJSP
  FileName: sessiontest  
  Date: 2015-05-08
  Time: 오후 4:56
  Author: Hadeslee 
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html>
<head>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <title>sessiontest</title>
</head>
<body>
<%
    Enumeration enumeration = session.getAttributeNames();
    int i = 0;
    while (enumeration.hasMoreElements()) {
        i++;
        String sName = enumeration.nextElement().toString();
        String sValue = (String) session.getAttribute(sName);
        out.println("sName : " + sName + "<br/>");
        out.println("sValue : " + sValue + "<br/>");
    }
    if (i == 0) out.println("해당 세션이 삭제 되었습니다.");
%>
</body>
</html>
