package net.skhu.mapper;

import net.skhu.domain.Pagination;
import net.skhu.domain.Student;
import net.skhu.domain.User;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Mapper
@Repository
public interface StudentMapper
{

    int findByIdAndPassword(@Param("id") int id, @Param("password") String password);
    Student findById(int id);
    String findByPassword(@Param("id") int id, @Param("name") String name, @Param("answer") String answer);
    void insert(Student student);
    int selectByLoginIdCheck(int id);
    void updateMember(User user);
    List<Student> findAll();
    int selectCount();
    List<Student> selectPage(Pagination pagination);
    Student findByStudent(int id);
    void updateNameAndDepartment(Student student);
}
