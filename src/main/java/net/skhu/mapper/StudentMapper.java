package net.skhu.mapper;

import net.skhu.domain.Pagination;
import net.skhu.domain.Student;
import net.skhu.domain.User;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Mapper
@Repository
public interface StudentMapper
{

    int findByIdAndPassword(@Param("id") int id, @Param("password") String password);
    Student findById(int id);
    Student findByIdMajor(int id);
    Student findByIdCulture(int id);
    Student findByIdF(int id);
    String findByPassword(@Param("id") int id, @Param("name") String name, @Param("answer") String answer);
    void insert(Student student);
    int selectByLoginIdCheck(int id);
    void updateMember(User user);
    List<Student> findAll();
    int selectCount(@Param("choice") int choice, @Param("search") String search);
    List<Student> selectPage(@Param("currentPage") int currentPage, @Param("pageSize") int pageSize, @Param("choice") int choice, @Param("search") String search);
    Student findByStudent(int id);
    void updateNameAndDepartment(Student student);
    int totalSemester(int id);
    int totalCredit(int id);
    double avgGrade(int id);
}
