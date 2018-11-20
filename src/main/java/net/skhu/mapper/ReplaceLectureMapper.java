package net.skhu.mapper;

import net.skhu.domain.Pagination;
import net.skhu.domain.ReplaceLecture;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;



@Repository
@Mapper

public interface ReplaceLectureMapper {

    List<ReplaceLecture> findAll(Pagination pagination);
    List<ReplaceLecture> findChange(@Param("id") int lecId);
    void insert(ReplaceLecture replaceLecture);
    int count();


}

