package com.jiat.webassignment04.web.controller;

import com.jiat.webassignment04.web.entity.Employee;
import jakarta.ws.rs.*;
import jakarta.ws.rs.core.MediaType;
import jakarta.ws.rs.core.Response;
import com.jiat.webassignment04.web.dto.RegisterDTO;
import com.jiat.webassignment04.web.service.UserService;
import org.glassfish.jersey.server.mvc.Viewable;

import java.time.LocalDateTime;

@Path("/register")
public class RegisterController {
    @GET
    @Produces(MediaType.TEXT_HTML)
    public Viewable index(){
//        return new Viewable("/index");
        return new Viewable("/frontend/Register");

    }
    @POST
    @Consumes(MediaType.APPLICATION_JSON)
    public Response register(RegisterDTO registerDTO){
        UserService userService = new UserService();
        Employee byNic = userService.getByNIC(registerDTO.getNic());
        if(byNic !=null){
            return Response.status(Response.Status.BAD_REQUEST).entity("NIC already exist.  <br> <br> <button onClick='window.location.reload(true)'>Go Back</button>").build();
        } else {

            if(registerDTO.getNic().equals("") || registerDTO.getDepartment().equals("SELECT") ||
                    registerDTO.getEducation().equals("SELECT")  || registerDTO.getGender().equals("SELECT") ||
                    registerDTO.getSalary()==0.0 ||registerDTO.getPassword().equals("")||
                    registerDTO.getFirstName().equals("") || registerDTO.getLastName().equals("") ||
                    registerDTO.getPosition().equals("SELECT")){
                return Response.status(Response.Status.INTERNAL_SERVER_ERROR).entity("Please fill all the fields.  <br> <br> <button onClick='window.location.reload(true)'>Go Back</button>").build();
            }else {
                Employee user = new Employee();
                LocalDateTime now = LocalDateTime.now();
                user.setHireDate(now);
                user.setNic(registerDTO.getNic());
                user.setPassword(registerDTO.getPassword());
                user.setDepartment(registerDTO.getDepartment());
                user.setEducation(registerDTO.getEducation());
                user.setFirstName(registerDTO.getFirstName());
                user.setLastName(registerDTO.getLastName());
                user.setGender(registerDTO.getGender());
                user.setSalary(registerDTO.getSalary());
                user.setPosition(registerDTO.getPosition());
                userService.save(user);
                return Response.status(Response.Status.OK).entity("Register Success..   <br> <br> <button onClick='window.location.reload(true)'>Go Back</button>").build();

            }


            ///

        }
    }
}
