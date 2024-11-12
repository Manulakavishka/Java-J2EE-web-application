package com.jiat.webassignment04.web.dto;

import com.jiat.webassignment04.web.entity.Department;
import com.jiat.webassignment04.web.entity.Education;
import com.jiat.webassignment04.web.entity.Gender;
import com.jiat.webassignment04.web.entity.Position;

import java.time.LocalDateTime;
import java.util.Date;

public class RegisterDTO extends AuthDTO {
    private String nic;
    private String firstName;
    private String lastName;
    private Gender gender;
    private Department department;
    private Education education;
    private Double salary;

    private LocalDateTime hireDate;
    private Position position;

    public String getNic() {
        return nic;
    }

    public void setNic(String nic) {
        this.nic = nic;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public Gender getGender() {
        return gender;
    }

    public void setGender(Gender gender) {
        this.gender = gender;
    }

    public Department getDepartment() {
        return department;
    }

    public void setDepartment(Department department) {
        this.department = department;
    }

    public Education getEducation() {
        return education;
    }

    public void setEducation(Education education) {
        this.education = education;
    }

    public Double getSalary() {
        return salary;
    }

    public void setSalary(Double salary) {
        this.salary = salary;
    }

    public LocalDateTime getHireDate() {
        return hireDate;
    }

    public void setHireDate(LocalDateTime hireDate) {
        this.hireDate = hireDate;
    }

    public Position getPosition() {
        return position;
    }

    public void setPosition(Position position) {
        this.position = position;
    }
}
