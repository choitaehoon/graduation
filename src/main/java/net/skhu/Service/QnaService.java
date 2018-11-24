package net.skhu.Service;

import net.skhu.domain.Qna;
import net.skhu.mapper.QnaMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class QnaService {
    @Autowired
    QnaMapper qnaMapper;

    static String[] target = {"title, s.name"};

    /* 검색해서 리스트 조회*/
    public List<Qna> srchByQnaList(int currentPage, int pageSize, int choice, String srch) {
        return qnaMapper.findQnaBySrch(currentPage,pageSize,choice,srch);
    }
/*
    public Qna findNotice(int id, int adminId){

        return noticeMapper.findNotice(id,adminId);
    }*/


    public int pageSrchCount(int choice, String srch){
        return qnaMapper.srchCount(choice,srch);
    }

    public int pageCount(){
        return qnaMapper.count();
    }

    public String[] selectCheck(int choice)
    {
        if (choice == 0)
            return new String[]{"",""};
        else
            return new String[]{"","selected"};
    }

}
