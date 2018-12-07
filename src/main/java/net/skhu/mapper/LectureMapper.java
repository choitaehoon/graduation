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

    //전체년도 과목검색
    List<Lecture> findLecBySrch(@Param("currentPage") int currentPage,@Param("pageSize") int pageSize,@Param("choice") int choice,@Param("srch") String srch);
    int srchCount(@Param("choice") int choice, @Param("srch") String srch);

    //과목하나찾기
    Lecture findLecture(@Param("year") int year,@Param("semester") String semester,@Param("id") String id, @Param("split") int split);

    //과목 전체리스트
    List<Lecture> findAll(Pagination pagination);
    int count();

    //과목수정
    void update(Lecture lecture);
    //과목 삽입
    void insert(Lecture lecture);
    //과목삭제
    void delete(Lecture lecture);

    List<Lecture> findEssentialMajor(int id);
    List<Lecture> findEssentialCulture(int id);
    List<Lecture> findBy18CulturalEssentials(int id);

    /*과목 리스트, 검색조건 적용*/
    List<Lecture> findNowLecBySrch(@Param("currentPage") int currentPage,@Param("pageSize") int pageSize,@Param("choice") int choice,@Param("srch") String srch);
    int srchNowCount(@Param("choice") int choice, @Param("srch") String srch);

    //소속 전공탐색 수 세기
    int countMajorSearch(int id);
    //타 학부 전공탐색 수 세기
    int countUndergraduate(int id);
}
