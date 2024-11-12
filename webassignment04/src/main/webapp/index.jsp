<%--
  Created by IntelliJ IDEA.
  User: 1zt
  Date: 24/08/2023
  Time: 20:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Home</title>
</head>
<body>
<input type="submit" value="Go To Register" class="btn btn-success float-right sign-up12" onclick="goToRegister()">
<br><br>
<label>when you go to the Register form. In the sidebar you can see Dashboard. click it and you can go to other processes.</label>
</body>
<script type="text/javascript">
    function goToRegister(){
        location.replace("http://localhost:8080/webassignment04/register");
        // window.location.assign("http://localhost:8080/webassignment04/register")
    }
</script>
</html>
