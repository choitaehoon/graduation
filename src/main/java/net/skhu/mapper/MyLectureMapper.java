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
    MyLecture findOne(MyLecture myLecture);
    void updateByReplaceGrade(MyLecture myLecture);

    int courseCount(@Param("choice") int choice, @Param("search") String search, @Param("id") int id);
    List<MyLecture> findByIdPage(@Param("currentPage") int currentPage, @Param("pageSize") int pageSize ,@Param("id") int id,@Param("choice") int choice, @Param("search") String search);
    void delete(@Param("remove") int remove,@Param("id") int id);
    void insert(MyLecture myLecture);

    int replaceLecCount();
    int count();
    void updateMajor(MyLecture myLecture);
    void initializeMajor(int id);
}
