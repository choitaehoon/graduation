package net.skhu.Service;

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

        if(user.getType()==1) {
            if (studentMapper.findByIdAndPassword(user.getId(), user.getPassword()) == 1)
                return studentMapper.findById(user.getId());
        }
        else if(user.getType()==2){
            if (adminMapper.findByIdAndPassword(user.getId(), user.getPassword()) == 1)
                return adminMapper.findById(user.getId());

        }

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

}
