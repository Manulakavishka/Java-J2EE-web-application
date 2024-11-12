package com.jiat.webassignment04.web.controller;

import com.jiat.webassignment04.web.dto.RegisterDTO;
import com.jiat.webassignment04.web.dto.UpdateDTO;
import com.jiat.webassignment04.web.entity.Employee;
import com.jiat.webassignment04.web.service.UserService;
import jakarta.persistence.Tuple;
import jakarta.ws.rs.*;
import jakarta.ws.rs.core.MediaType;
import jakarta.ws.rs.core.Response;
import org.glassfish.jersey.server.mvc.Viewable;

import java.util.List;

@Path("/update")
public class UpdateController {
    @GET
    @Produces(MediaType.TEXT_HTML)
    public Viewable index(){
        UserService userService= new UserService();
        List<Tuple> allEmployees = userService.getAllEmployees();
//        return new Viewable("/index");
        return new Viewable("/frontend/Update", allEmployees);

    }
    @PUT
    @Consumes(MediaType.APPLICATION_JSON)
    public Response update(UpdateDTO registerDTO){
        UserService userService = new UserService();
        if(registerDTO.getId().equals("select")){
            return Response.status(Response.Status.BAD_REQUEST).entity("Please select NIC.  <br> <br> <button onClick='window.location.reload(true)'>Go Back</button>").build();
        } else {

            if(registerDTO.getId()==0 || registerDTO.getDepartment().equals("SELECT") ||
                    registerDTO.getEducation().equals("SELECT")  || registerDTO.getGender().equals("SELECT") ||
                    registerDTO.getSalary()==0.0 ||registerDTO.getPassword().equals("")||
                    registerDTO.getFirstName().equals("") || registerDTO.getLastName().equals("") ||
                    registerDTO.getPosition().equals("SELECT")){
                return Response.status(Response.Status.INTERNAL_SERVER_ERROR).entity("Please fill all the fields.  <br> <br> <button onClick='window.location.reload(true)'>Go Back</button>").build();
            }else {
                Employee user = new Employee();
                Employee byId = userService.getById(registerDTO.getId());
                user.setHireDate(byId.getHireDate());
                user.setNic(byId.getNic());
                user.setId(registerDTO.getId());
                user.setPassword(registerDTO.getPassword());
                user.setDepartment(registerDTO.getDepartment());
                user.setEducation(registerDTO.getEducation());
                user.setFirstName(registerDTO.getFirstName());
                user.setLastName(registerDTO.getLastName());
                user.setGender(registerDTO.getGender());
                user.setSalary(registerDTO.getSalary());
                user.setPosition(registerDTO.getPosition());
                userService.updateEmployee(user);
                return Response.status(Response.Status.OK).entity("Update Success..   <br> <br> <button onClick='window.location.reload(true)'>Go Back</button>").build();

            }


            ///

        }
    }
}
