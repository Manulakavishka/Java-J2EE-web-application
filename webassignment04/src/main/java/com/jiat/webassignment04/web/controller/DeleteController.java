package com.jiat.webassignment04.web.controller;

import com.jiat.webassignment04.web.dto.AuthDTO;
import com.jiat.webassignment04.web.dto.UpdateDTO;
import com.jiat.webassignment04.web.entity.Employee;
import com.jiat.webassignment04.web.service.UserService;
import jakarta.persistence.Tuple;
import jakarta.ws.rs.*;
import jakarta.ws.rs.core.MediaType;
import jakarta.ws.rs.core.Response;
import org.glassfish.jersey.server.mvc.Viewable;

import java.util.List;

@Path("/delete")
public class DeleteController {
    @GET
    @Produces(MediaType.TEXT_HTML)
    public Viewable index(){
        UserService userService= new UserService();
        List<Tuple> allEmployees = userService.getAllEmployees();
//        return new Viewable("/index");
        return new Viewable("/frontend/Delete", allEmployees);

    }
    @POST
    @Consumes(MediaType.APPLICATION_JSON)
    public Response detele(AuthDTO registerDTO){
        UserService userService = new UserService();
        if(registerDTO.getId()==0){
            return Response.status(Response.Status.BAD_REQUEST).entity("Please select NIC.  <br> <br> <button onClick='window.location.reload(true)'>Go Back</button>").build();
        } else {

                try{
                    userService.deleteEmployee(registerDTO.getId());
                    return Response.status(Response.Status.OK).entity("Delete Success..   <br> <br> <button onClick='window.location.reload(true)'>Go Back</button>").build();

                }catch (Exception e){
                    return Response.status(Response.Status.INTERNAL_SERVER_ERROR).entity("Please fill all the fields.  <br> <br> <button onClick='window.location.reload(true)'>Go Back</button>").build();

                }

        }
    }
}
