package net.skhu.Service;

import net.skhu.domain.Pagination;
import org.springframework.stereotype.Service;
import net.skhu.domain.Lecture;
import net.skhu.mapper.LectureMapper;
import org.springframework.beans.factory.annotation.Autowired;


import java.util.List;

@Service
public class LectureService{
    @Autowired
    LectureMapper lectureMapper;


    public List<Lecture> lectureList(Pagination pagination) {
        return lectureMapper.findAll(pagination);
    }

    public Lecture findLecture(int year,String semester,String lectureId,int adminId){

        return lectureMapper.findLecture(year,semester,lectureId,adminId);
    }


    public int pageCount(){
        return lectureMapper.count();
    }

    public void lecInsert(Lecture lecture){
        lectureMapper.insert(lecture);
    }

    public void lecUpdate(Lecture lecture){
        lectureMapper.update(lecture);
    }



}