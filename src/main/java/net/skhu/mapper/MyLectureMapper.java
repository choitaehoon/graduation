package net.skhu.mapper;

import net.skhu.domain.MyLecture;
import net.skhu.domain.Myreplace;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;
import java.util.List;

@Mapper
@Repository
public interface MyLectureMapper
{
    List<MyLecture> findReplaceLecByStu(int id);
    int courseCount(@Param("choice") int choice, @Param("search") String search, @Param("id") int id);
    List<MyLecture> findByIdPage(@Param("currentPage") int currentPage, @Param("pageSize") int pageSize ,@Param("id") int id,@Param("choice") int choice, @Param("search") String search);
    void delete(int id);
    void insert(MyLecture myLecture);
    int count();
}
