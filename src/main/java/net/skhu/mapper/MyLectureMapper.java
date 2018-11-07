package net.skhu.mapper;

import net.skhu.domain.MyLecture;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;
import java.util.List;

@Mapper
@Repository
public interface MyLectureMapper
{
    int courseCount(@Param("choice") int choice, @Param("search") String search, @Param("id") int id);
    List<MyLecture> findByIdPage(@Param("currentPage") int currentPage, @Param("pageSize") int pageSize ,@Param("id") int id,@Param("choice") int choice, @Param("search") String search);
    void delete(int id);
}
