package net.skhu.mapper;

import net.skhu.domain.Pagination;
import net.skhu.domain.Qna;
import net.skhu.domain.Qnaanswer;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Mapper
@Repository
public interface QnaanswerMapper
{

    Qnaanswer findQnaa(@Param("id") int qnaaId, @Param("student_id") int student_id);
    void insert(Qnaanswer qnaa);
    void update(Qnaanswer qnaa);
    int count();
}
