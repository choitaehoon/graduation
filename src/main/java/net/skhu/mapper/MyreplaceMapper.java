package net.skhu.mapper;

import net.skhu.domain.Myreplace;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
@Mapper
public interface MyreplaceMapper {

    List<Myreplace> findAllByStudent(int id);
    void delete(int studentId);
    void insert(Myreplace myreplace);

}
