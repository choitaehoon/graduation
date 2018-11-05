package net.skhu.mapper;

import net.skhu.domain.Pagination;
import net.skhu.domain.ReplaceLecture;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;



@Repository
@Mapper

public interface ReplaceLectureMapper {

    //ReplaceLecture findBytitle(String title);
    List<ReplaceLecture> findAll(Pagination pagination);
    void insert(ReplaceLecture replaceLecture);
    void updateRL2(ReplaceLecture replaceLecture);
    int count();


}

