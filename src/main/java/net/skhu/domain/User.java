package net.skhu.domain;

import lombok.Data;

@Data
public class User
{
    int id;
    String password;
    String name;
    int type;
    String email;
    String question;
    String phone;
    int myGrade;
}
