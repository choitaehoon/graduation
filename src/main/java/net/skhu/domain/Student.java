package net.skhu.domain;

import lombok.Data;

import javax.persistence.*;

@Data
@Entity
public class Student
{
    @Id
    int id;

    String name;

    String password1;
    String password2;

    String email;

    int type;


    @Transient
    @ManyToOne
    @JoinColumn(name="departmentId")
    Department department;

}
