package net.skhu.domain;

import lombok.Data;

import javax.persistence.*;

@Data
@Entity
public class Student
{
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    int id;

    String name;

    String password;

<<<<<<< HEAD
    @ManyToOne
    @JoinColumn(name="departmentId")
    Department department;
=======
//    @ManyToOne
//    @JoinColumn(name="departmentId")
//    Department department;
>>>>>>> 772ffb53855bfa13fe82410d60ad588337038696

}
