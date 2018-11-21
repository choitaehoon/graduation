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

    ReplaceLecture findOne(String closeLecture);

    List<ReplaceLecture> findCloseBySrch(@Param("currentPage") int currentPage,@Param("pageSize") int pageSize,@Param("choice") int choice,@Param("srch") String srch);

    void insert(ReplaceLecture replaceLecture);

    void update(ReplaceLecture replaceLecture);

    void delete(String closeLecture);

    int count();

    int srchCount(@Param("choice") int choice, @Param("srch") String srch);
}

