package com.jiat.webassignment04.web.entity;

public enum Gender {
    SELECT,MALE,FEMALE
}

//@Entity
//@Table(name = "gender")
//public class Gender {
//    @Id
//    @GeneratedValue(strategy = GenerationType.IDENTITY)
//    private Long id;
//    private String name;
//
//    @OneToMany(cascade = CascadeType.ALL)
//    @JoinColumn(name = "genderId")
//    private Set<Employee> employees = new HashSet<>();
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
//    public Set<Employee> getEmployees() {
//        return employees;
//    }
//
//    public void setEmployees(Set<Employee> employees) {
//        this.employees = employees;
//    }

//}
