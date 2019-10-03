<%--
  Created by IntelliJ IDEA.
  User: MHB
  Date: 10/3/2019
  Time: 2:16 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add NEWS</title>

</head>

<body>
<form:form modelAttribute="news" action="/ConfirmAddNews" method="post" >

        <label>NEWS :</label>
        <form:input type="text"   path="News" />


        <label>summery :</label>
        <form:input type="text"  path="Sum"/>


        <label >Highlight : </label>
    <form:select type="text"  path="Highlight">
        <option value="yes">Yes</option>
        <option value="no">No</option>
    </form:select>


    <form:button type="submit">Submit</form:button>
</form:form>
</body>
</html>
