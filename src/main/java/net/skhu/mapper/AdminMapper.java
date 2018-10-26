package net.skhu.mapper;

import net.skhu.domain.Admin;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

@Mapper
@Repository
public interface AdminMapper
{
    int findByIdAndPassword(@Param("id") int id, @Param("password") String password);
    Admin findById(int id);
}
