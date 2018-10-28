package net.skhu.domain;

import lombok.Data;

@Data
public class Admin
{
    int id;
    String name;
    String password;
    String email;
    String phone;
    Department department;

    int type;

}
