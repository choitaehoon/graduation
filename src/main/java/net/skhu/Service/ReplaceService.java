package net.skhu.Service;

import net.skhu.domain.ReplaceLecture;
import net.skhu.mapper.ReplaceLectureMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ReplaceService {

    @Autowired
    ReplaceLectureMapper replaceLectureMapper;

    public List<ReplaceLecture> replaceLectureList(){
        return replaceLectureMapper.findAll();
    }


/*    public Lecture findLecture(int year,String lectureId,int adminId){

        return lectureMapper.findLecture(year,lectureId,adminId);
    }*/

    /*페이지네이션시 필요한 메소드*/
    public int pageCount(){
        return replaceLectureMapper.count();
    }
}
