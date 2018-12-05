package net.skhu.mapper;

import net.skhu.domain.Pagination;
import net.skhu.domain.Qna;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Mapper
@Repository
public interface QnaMapper
{
    List<Qna> findAll(Pagination pagination);
    List<Qna> findAll2();
    List<Qna> findNew();
    List<Qna> findByQnaa(@Param("id") int qnaId);
    Qna findQna(@Param("id") int qnaId);
    Qna findOne(int qnaId);

    void insert(Qna qna);
    void update(Qna qna);
    void delete(int qnaId);
    void plusState(Qna qna);
    void plusCallState(int qnaId);
    int count();

    void countPlus(Qna qna);
    List<Qna> findQnaBySrch(@Param("currentPage") int currentPage,@Param("pageSize") int pageSize,@Param("choice") int choice,@Param("srch") String srch);
    int srchCount(@Param("choice") int choice, @Param("srch") String srch);
}
