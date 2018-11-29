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
    int courseCount(int id);
    int findByIdAndPassword(@Param("id") int id, @Param("password") String password);
    Student findByIdPage(@Param("currentPage")int currentPage, @Param("pageSize") int pageSize,@Param("id") int id);
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
    int selectCount2(@Param("choice") int choice, @Param("search") String search);
    List<Student> selectPage(@Param("currentPage") int currentPage, @Param("pageSize") int pageSize, @Param("choice") int choice, @Param("search") String search);
    List<Student> selectPage2(@Param("currentPage") int currentPage, @Param("pageSize") int pageSize, @Param("choice") int choice, @Param("search") String search);
    Student findByStudent(int id);
    void updateNameAndDepartment(@Param("name") String name , @Param("department_id") int department_id, @Param("id") int id);
    int totalSemester(int id);
    int totalCredit(int id);
    int totalCreditMajor(int id);
    int totalCreditCulture(int id);
    int creditPercent(int id);
    int creditPercentMajor(int id);
    int creditPercentCulture(int id);
    int chapelCount(int id);
    int chapelPercent(int id);
    int volunteerCount(int id);
    int volunteerPercent(int id);
    double avgGrade(int id);
    void updateRule(Student student);
    void updateComment(Student student);
    int test(int id);
    int doubleMajor(int id);
    int doubleMajorPercent(int id);
    int minor(int id);
    int minorPercent(int id);
    int majorSearch(int id);
    int majorSearchPercent(int id);
}
