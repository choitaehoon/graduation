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

}
