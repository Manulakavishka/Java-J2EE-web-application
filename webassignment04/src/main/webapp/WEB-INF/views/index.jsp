<%--
  Created by IntelliJ IDEA.
  User: 1zt
  Date: 23/08/2023
  Time: 20:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%--<form method="post" action="register">--%>
<input type="text" class="form-control"  id="nic">
<a href="#" class="btn btn-primary sign-up">Sign Up</a>
<%--</form>--%>
</body>
<script type="text/javascript">
    document.getElementsByClassName('sign-up').item(0).addEventListener('click', function () {
        let nic = document.getElementById('nic').value;

        console.log(name);
        fetch('register',{
            method:'post',
            headers:{
                'Content-Type':'application/json'
            },
            body:JSON.stringify({
                nic:nic,
            })
        }).then(response=> response.text())
            .then(text=>document.body.innerHTML=text);
    });

</script>
</body>
</html>
