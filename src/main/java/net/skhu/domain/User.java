package net.skhu.domain;

import lombok.Data;

import javax.persistence.Id;

@Data
public class User
{
    @Id
    int id;

    String password;
}
