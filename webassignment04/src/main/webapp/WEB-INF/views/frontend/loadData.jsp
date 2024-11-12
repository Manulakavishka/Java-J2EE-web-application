<%@ page import="com.jiat.webassignment04.web.service.UserService" %>
<%@ taglib uri="http://callidora.lk/jsp/template-inheritance" prefix="layout" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<layout:extends name="Base">
  <layout:put block="content" >

    <!-- Google Font: Source Sans Pro -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="${BASE_URL}assets/plugins/fontawesome-free/css/all.min.css">
    <!-- DataTables -->
    <link rel="stylesheet" href="${BASE_URL}assets/plugins/datatables-bs4/css/dataTables.bootstrap4.min.css">
    <link rel="stylesheet" href="${BASE_URL}assets/plugins/datatables-responsive/css/responsive.bootstrap4.min.css">
    <link rel="stylesheet" href="${BASE_URL}assets/plugins/datatables-buttons/css/buttons.bootstrap4.min.css">

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
  <!-- Content Header (Page header) -->
  <section class="content-header">
    <div class="container-fluid">
      <div class="row mb-2">
        <div class="col-sm-6">
          <h1>Load Data From Database</h1>
        </div>
        <div class="col-sm-6">
          <ol class="breadcrumb float-sm-right">
            <li class="breadcrumb-item"><a href="#">Home</a></li>
            <li class="breadcrumb-item active">DataTables</li>
          </ol>
        </div>
      </div>
    </div><!-- /.container-fluid -->
  </section>

  <!-- Main content -->
  <section class="content">
    <div class="container-fluid">
      <div class="row">
        <div class="col-12">

          <div class="card">
            <div class="card-header">
              <h3 class="card-title">DataTable with default features</h3>
            </div>
            <!-- /.card-header -->
            <div class="card-body">
              <table id="example1" class="table table-bordered table-striped">
                <thead>
                <tr>
                  <th>Id</th>
                  <th>First Name</th>
                  <th>Last Name</th>
                  <th>Department</th>
                  <th>Position</th>
                  <th>Education</th>
                  <th>Gender</th>
                  <th>Salary</th>
                  <th>Password</th>
                  <th>Hire Date</th>
                </tr>
                </thead>
                <tbody>
                <c:set var="newUserService" value="<%= new UserService().getAllEmployees()%>"/>

                  <c:forEach var="newUser" items="${newUserService}">
                    <tr>
                      <td>${newUser.get("id")}</td>
                      <td>${newUser.get("fn")}</td>
                      <td>${newUser.get("ln")}</td>
                      <td>${newUser.get("dep")}</td>
                      <td>${newUser.get("pos")}</td>
                      <td>${newUser.get("ed")}</td>
                      <td>${newUser.get("gender")}</td>
                      <td>${newUser.get("salary")}</td>
                      <td>${newUser.get("pw")}</td>
                      <td>${newUser.get("hire")}</td>
                    </tr>
                  </c:forEach>


                </tbody>
              </table>
            </div>
            <!-- /.card-body -->
          </div>
          <!-- /.card -->
        </div>
        <!-- /.col -->
      </div>
      <!-- /.row -->
    </div>
    <!-- /.container-fluid -->
  </section>
  <!-- /.content -->
</div>
<!-- /.content-wrapper -->
    <!-- DataTables  & Plugins -->
    <script src="${BASE_URL}assets/plugins/datatables/jquery.dataTables.min.js"></script>
    <script src="${BASE_URL}assets/plugins/datatables-bs4/js/dataTables.bootstrap4.min.js"></script>
    <script src="${BASE_URL}assets/plugins/datatables-responsive/js/dataTables.responsive.min.js"></script>
    <script src="${BASE_URL}assets/plugins/datatables-responsive/js/responsive.bootstrap4.min.js"></script>
    <script src="${BASE_URL}assets/plugins/datatables-buttons/js/dataTables.buttons.min.js"></script>
    <script src="${BASE_URL}assets/plugins/datatables-buttons/js/buttons.bootstrap4.min.js"></script>
    <script src="${BASE_URL}assets/plugins/jszip/jszip.min.js"></script>
    <script src="${BASE_URL}assets/plugins/pdfmake/pdfmake.min.js"></script>
    <script src="${BASE_URL}assets/plugins/pdfmake/vfs_fonts.js"></script>
    <script src="${BASE_URL}assets/plugins/datatables-buttons/js/buttons.html5.min.js"></script>
    <script src="${BASE_URL}assets/plugins/datatables-buttons/js/buttons.print.min.js"></script>
    <script src="${BASE_URL}assets/plugins/datatables-buttons/js/buttons.colVis.min.js"></script>
  </layout:put>
</layout:extends>