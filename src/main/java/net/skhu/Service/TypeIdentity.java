package net.skhu.Service;

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

    public Object distinct(int type,int id, String password) {
        if(type==1) {
            if (studentMapper.findByIdAndPassword(id, password) == 1)
                return studentMapper.findById(id);
        }
        else {
            if (adminMapper.findByIdAndPassword(id, password) == 1) {
                return adminMapper.findById(id);
            }
        }
        return 123;

    }

}
