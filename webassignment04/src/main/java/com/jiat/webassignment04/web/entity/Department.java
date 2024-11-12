package com.jiat.webassignment04.web.entity;

public enum Department {
    SELECT,OPERATIONS,MARKETING,FINANCE,HR
}
//
//
//import jakarta.persistence.*;
//
//import java.io.Serializable;
//
//@Entity
//@Table(name = "departments")
//@Access(value= AccessType.FIELD)
//public class Department implements Serializable {
//    @Id
//    @GeneratedValue(strategy = GenerationType.AUTO)
//    private Long id;
//    private String name;
//
//    public Department(Long id, String name) {
//        this.id = id;
//        this.name = name;
//    }
//
//    public Department() {
//    }
//
//    public Long getId() {
//        return id;
//    }
//
//    public void setId(Long id) {
//        this.id = id;
//    }
//
//    public String getName() {
//        return name;
//    }
//
//    public void setName(String name) {
//        this.name = name;
//    }
//
//    @Override
//    public String toString() {
//        return "Id= " + id + ", Name= " + name;
//    }
//
//}
