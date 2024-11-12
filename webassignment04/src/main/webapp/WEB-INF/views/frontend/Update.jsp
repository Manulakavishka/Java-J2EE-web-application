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
                            <h1>Employee Update</h1>
                        </div>
                        <div class="col-sm-6">
                            <ol class="breadcrumb float-sm-right">
                                <li class="breadcrumb-item"><a href="#">Home</a></li>
                                <li class="breadcrumb-item active">Employee Update</li>
                            </ol>
                        </div>
                    </div>
                </div><!-- /.container-fluid -->
            </section>

            <!-- Main content -->
            <section class="content">
                <div class="row">
                    <div class="col-md-6">
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
<%--                                    <c:set var="newUserService" value="<%= new UserService().getAllEmployees()%>"/>--%>
<%--                                    <p>Result: ${newUserService}</p>--%>

                                    <select id="nic" class="form-control custom-select">
                                        <option selected disabled value="select">Select one</option>
                                        <c:forEach var="newUser" items="${newUserService}">
                                            <option value="${newUser.get("id")}" >${newUser.get("nic")}</option>
                                        </c:forEach>


                                    </select>
                                </div>
                                <div class="form-group">
                                    <label for="password">Password</label>
                                    <input type="password" id="password" class="form-control">
                                </div>
                                <div class="form-group">
                                    <label for="fname">First Name</label>
                                    <input type="text" id="fname" class="form-control">
                                </div>
                                <div class="form-group">
                                    <label for="lname">Last Name</label>
                                    <input type="text" id="lname" class="form-control">
                                </div>
                                <div class="form-group">
                                    <label for="inputStatus">Gender</label>
                                    <select id="inputStatus" class="form-control custom-select">
                                        <option selected disabled value="SELECT">Select one</option>
                                        <option value="MALE">Male</option>
                                        <option value="FEMALE">Female</option>
                                    </select>
                                </div>
                            </div>
                            <!-- /.card-body -->
                        </div>
                        <!-- /.card -->
                    </div>
                    <div class="col-md-6">
                        <div class="card card-secondary">
                            <div class="card-header">
                                <h3 class="card-title">Company</h3>

                                <div class="card-tools">
                                    <button type="button" class="btn btn-tool" data-card-widget="collapse" title="Collapse">
                                        <i class="fas fa-minus"></i>
                                    </button>
                                </div>
                            </div>
                            <div class="card-body">
                                <div class="form-group">
                                    <label for="department">Department</label>
                                    <select id="department" class="form-control custom-select">
                                        <option selected disabled value="SELECT">Select one</option>
                                        <option value="FINANCE">FINANCE</option>
                                        <option value="OPERATIONS">OPERATIONS</option>
                                        <option value="MARKETING">MARKETING</option>
                                        <option value="HR">HR</option>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label for="position">Positont</label>
                                    <select id="position" class="form-control custom-select">
                                        <option selected disabled value="SELECT">Select one</option>
                                        <option value="USER">USER</option>
                                        <option value="MANAGER">MANAGER</option>
                                        <option value="DIRECTOR">DIRECTOR</option>
                                        <option value="VICEDIRECTOR">VICE DIRECTOR</option>
                                        <option value="EXPORT">EXPORT</option>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label for="education">Education</label>
                                    <select id="education" class="form-control custom-select">
                                        <option selected disabled value="SELECT">Select one</option>
                                        <option value="PRIMARYSCHOOL">PRIMARY SCHOOL</option>
                                        <option value="HIGHSCHOOL">HIGH SCHOOL</option>
                                        <option value="BACHELORSDEGRESS">BACHELOR'S DEGRESS</option>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label for="inputEstimatedDuration">Salary</label>
                                    <input type="number" id="inputEstimatedDuration" class="form-control">
                                </div>
                            </div>
                            <!-- /.card-body -->
                        </div>
                        <!-- /.card -->
                    </div>
                </div>
                <div class="row">
                    <div class="col-12">
<%--                        <a href="#" class="btn btn-secondary">Cancel</a>--%>
                        <input type="submit" value="Update" class="btn btn-success float-right sign-up12">
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
                let password = document.getElementById('password').value;
                let firstName = document.getElementById('fname').value;
                let lastName = document.getElementById('lname').value;
                let gender = document.getElementById('inputStatus').value;
                    let department = document.getElementById('department').value;
                    let education = document.getElementById('education').value;
                    let salary = document.getElementById('inputEstimatedDuration').value;
                let position = document.getElementById('position').value;

                    if(salary==""){
                        salary=0.0;
                    }

                    if(id=="select"){
                        id=0;
                    }

                console.log(salary);
                fetch('update',{
                    method:'put',
                    headers:{
                        'Content-Type':'application/json'
                    },
                    body:JSON.stringify({
                        id:id,
                        password:password,
                        firstName:firstName,
                        lastName:lastName,
                        gender:gender,
                        department:department,
                        education:education,
                        position:position,
                        salary:salary
                    })
                }).then(response=> response.text())
                    .then(text=>document.body.innerHTML=text);

                });







        </script>
    </layout:put>
</layout:extends>