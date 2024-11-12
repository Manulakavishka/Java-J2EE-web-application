<%@ page import="jakarta.persistence.Tuple" %>
<%@ page import="java.util.List" %>
<%@ page import="com.jiat.webassignment04.web.service.UserService" %>
<%@ taglib uri="http://callidora.lk/jsp/template-inheritance" prefix="layout" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<layout:extends name="Base">
    <layout:put block="content" >
        <div class="content-wrapper">
            <!-- Content Header (Page header) -->
            <section class="content-header">
                <div class="container-fluid">
                    <div class="row mb-2">
                        <div class="col-sm-6">
                            <h1>Employee Detele</h1>
                        </div>
                        <div class="col-sm-6">
                            <ol class="breadcrumb float-sm-right">
                                <li class="breadcrumb-item"><a href="#">Home</a></li>
                                <li class="breadcrumb-item active">Employee Delete</li>
                            </ol>
                        </div>
                    </div>
                </div><!-- /.container-fluid -->
            </section>

            <!-- Main content -->
            <section class="content">
                <div class="row">
                    <div class="col-md-12">
                        <div class="card card-primary">
                            <div class="card-header">
                                <h3 class="card-title">General</h3>

                                <div class="card-tools">
                                    <button type="button" class="btn btn-tool" data-card-widget="collapse" title="Collapse">
                                        <i class="fas fa-minus"></i>
                                    </button>
                                </div>
                            </div>
<%--                            <form action="${BASE_URL}register" method="post">--%>
                            <div class="card-body">
                                <div class="form-group">
                                    <label for="nic">NIC</label>

                                    <c:set var="newUserService" value="<%= new UserService().getAllEmployees()%>"/>

                                    <select id="nic" class="form-control custom-select">
                                        <option selected disabled value="select">Select one</option>
                                        <c:forEach var="newUser" items="${newUserService}">
                                            <option value="${newUser.get("id")}" >${newUser.get("nic")}</option>
                                        </c:forEach>


                                    </select>

                            </div>
                            <!-- /.card-body -->
                        </div>
                        <!-- /.card -->
                    </div>
                </div>
                <div class="row">
                    <div class="col-12">
<%--                        <a href="#" class="btn btn-secondary">Cancel</a>--%>
                        <input type="submit" value="Delete" class="btn btn-success float-right sign-up12">
<%--    <a href="#" class="btn btn-primary float-right sign-up12" >Sign Up</a>--%>
                    </div>
                </div>
            </section>
<%--            </form>--%>
            <!-- /.content -->
        </div>
    </layout:put>
    <layout:put block="script">
        <script type="text/javascript">


            document.getElementsByClassName('sign-up12').item(0).addEventListener('click', function () {


                let id = document.getElementById('nic').value;
                if(id=="select"){
                    id=0;
                }

                fetch('delete',{
                    method:'post',
                    headers:{
                        'Content-Type':'application/json'
                    }
                    ,
                    body:JSON.stringify({
                        id:id
                    })
                }).then(response=> response.text())
                    .then(text=>document.body.innerHTML=text);

                });







        </script>
    </layout:put>
</layout:extends>