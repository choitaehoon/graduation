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

    Qnaanswer findQnaa(@Param("qna_id") int qnaId);
    void insert(Qnaanswer qnaanswer);
    int count();
}
