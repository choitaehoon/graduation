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
    List<Notice> findAll(Pagination pagination);
    Notice findNotice(@Param("id") int noticeId, @Param("admin_id") int admin_id);
    int count();
    int srchCount(@Param("choice") int choice, @Param("srch") String srch);
    void insert(Notice notice);
    void update(Notice notice);
    void delete(int noticeId);

}
