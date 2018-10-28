package net.skhu.Service;

import net.skhu.domain.Admin;
import net.skhu.domain.Student;
import net.skhu.domain.User;
import net.skhu.mapper.AdminMapper;
import net.skhu.mapper.StudentMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;



@Service
public class TypeIdentity
{
    @Autowired
    StudentMapper studentMapper;
    @Autowired
    AdminMapper adminMapper;

    public Object distinct(User user) {


        if (studentMapper.findByIdAndPassword(user.getId(), user.getPassword()) == 1) {
            Student student=studentMapper.findById(user.getId());
            student.setType(1);
            return student;
        }
        else if (adminMapper.findByIdAndPassword(user.getId(), user.getPassword()) == 1) {
            Admin admin=adminMapper.findById(user.getId());
            admin.setType(2);
            return admin;
        }
        else
            return null;


    }
    public String beforeLogin(User user) {
        String error="아이디 or 비밀번호가 잘못되었습니다";
        if (studentMapper.findByIdAndPassword(user.getId(), user.getPassword()) == 0)
                return error;

        else if (adminMapper.findByIdAndPassword(user.getId(), user.getPassword()) == 0)
                return error;

        return null;

    }

    public Object typeCheck(int type, int id)
    {
        if (type == 1) //학생 이면
            return studentMapper.findById(id);
        else //교수이면
            return adminMapper.findById(id);
    }

}
