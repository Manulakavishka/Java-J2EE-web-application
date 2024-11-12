package com.jiat.webassignment04.web;


import com.jiat.webassignment04.web.entity.Employee;
import com.jiat.webassignment04.web.service.UserService;
import com.jiat.webassignment04.web.util.HibernateUtil;
import jakarta.persistence.Tuple;

import java.util.List;

public class Test {
    public static void main(String[] args) {
//        HibernateUtil.getSessionFactory();
        UserService userService = new UserService();
        List<Tuple> allEmployees = userService.getAllEmployees();
        for (Tuple tuple : allEmployees){
//            System.out.println(tuple.get("firstName"));
//            System.out.println(tuple.get(0));
//            System.out.println(tuple.get("fn"));
            System.out.println(tuple.get("nic"));
        }
    }
}
