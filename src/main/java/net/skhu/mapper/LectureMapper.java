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

    List<Lecture> findAll();
    Lecture findLecutre(@Param("year") int year,@Param("id") String id, @Param("admin_id") int admin_id);
    int count();

    List<Lecture> findAll(Pagination pagination);

    Lecture findLecture(int year, String semester, String lectureId, int adminId);
}