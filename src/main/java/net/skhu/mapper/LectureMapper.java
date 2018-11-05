package net.skhu.mapper;

import net.skhu.domain.Lecture;
import net.skhu.domain.Pagination;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
@Mapper
public interface LectureMapper {


    List<Lecture> findAll(Pagination pagination);
    Lecture findLecture(@Param("year") int year,@Param("semester") String semester,@Param("id") String id, @Param("admin_id") int admin_id);
    int count();
    void update(Lecture lecture);
    void insert(Lecture lecture);

}
