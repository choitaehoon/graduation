package net.skhu.mapper;

import net.skhu.domain.Admin;
import net.skhu.domain.Notice;
import net.skhu.domain.Pagination;
import net.skhu.domain.User;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Mapper
@Repository
public interface NoticeMapper
{
    List<Notice> findNotiBySrch(@Param("currentPage") int currentPage,@Param("pageSize") int pageSize,@Param("choice") int choice,@Param("srch") String srch);
    List<Notice> findAll(Pagination pagination);
    List<Notice> findNew();
    Notice findNotice(@Param("id") int noticeId, @Param("admin_id") int adminId);
    Notice findOne(@Param("id") int noticeId);
    int count();
    int srchCount(@Param("choice") int choice, @Param("srch") String srch);

    void countPlus(Notice notice);
    void insert(Notice notice);
    void update(Notice notice);
    void delete(int noticeId);


}
