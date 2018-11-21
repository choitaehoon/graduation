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


    List<Lecture> findLecBySrch(@Param("currentPage") int currentPage,@Param("pageSize") int pageSize,@Param("choice") int choice,@Param("srch") String srch);
    Lecture findLecture(@Param("year") int year,@Param("semester") String semester,@Param("id") String id, @Param("admin_id") int admin_id);
    List<Lecture> findAll(Pagination pagination);
    int count();
    int srchCount(@Param("choice") int choice, @Param("srch") String srch);
    void update(Lecture lecture);
    void insert(Lecture lecture);
    void delete(Lecture lecture);

    List<Lecture> findEssentialMajor(int id);
    List<Lecture> findEssentialCulture(int id);
    List<Lecture> findBy18CulturalEssentials(int id);
    List<Lecture> findBy18Chapel(int id);
}
