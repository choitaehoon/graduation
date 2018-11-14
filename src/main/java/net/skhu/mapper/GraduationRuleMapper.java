package net.skhu.mapper;

import net.skhu.domain.GraduationRule;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;
import java.util.List;

@Mapper
@Repository
public interface GraduationRuleMapper
{
    List<GraduationRule> findAll();
    List<GraduationRule> findBy18(int id);
}
