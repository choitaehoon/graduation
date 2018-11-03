package net.skhu.mapper;

import net.skhu.domain.ReplaceLecture;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;

<<<<<<< HEAD

@Repository
@Mapper
=======
@Mapper
@Repository
>>>>>>> 0eaff6aeb40a05d608a11353e9d844ca24d5267b
public interface ReplaceLectureMapper {

    //ReplaceLecture findBytitle(String title);
    List<ReplaceLecture> findAll();
    void insert(ReplaceLecture replaceLecture);
    void updateRL2(ReplaceLecture replaceLecture);
    int count();

<<<<<<< HEAD
}
=======
}
>>>>>>> 0eaff6aeb40a05d608a11353e9d844ca24d5267b
