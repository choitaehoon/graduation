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
    int department_id;
    Department department;

    int type;
    int adminid;
}
