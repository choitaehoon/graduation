package net.skhu.Service;

import net.skhu.domain.Admin;
import net.skhu.domain.Student;
import net.skhu.domain.User;
import net.skhu.mapper.AdminMapper;
import net.skhu.mapper.StudentMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

public class Membership {
    @Autowired
    StudentMapper studentMapper;

    public void insert(Student studnet){

    }

}
