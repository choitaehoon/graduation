package net.skhu.mapper;

import net.skhu.domain.Admin;
import net.skhu.domain.User;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

@Mapper
@Repository
public interface AdminMapper
{
    int findByIdAndPassword(@Param("id") int id, @Param("password") String password);
    Admin findByAdmin(int id);
    void updateMember(User user);
    void deleteStudent(int id);
}
