package net.skhu.mapper;

import net.skhu.domain.Student;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

@Mapper
@Repository
public interface StudentMapper
{
    int findByIdAndPassword(@Param("id") int id, @Param("password") String password);
    Student findById(int id);
    String findByPassword(@Param("id") int id, @Param("name") String name, @Param("answer") String answer);
    void insert(Student student);
}
