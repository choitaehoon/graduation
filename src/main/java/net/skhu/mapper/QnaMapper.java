package net.skhu.mapper;

import net.skhu.domain.Pagination;
import net.skhu.domain.Qna;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;

@Mapper
@Repository
public interface QnaMapper
{
    List<Qna> findAll(Pagination pagination);
    void insert(Qna qna);
    int count();
}
