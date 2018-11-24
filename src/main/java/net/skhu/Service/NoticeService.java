package net.skhu.Service;

import net.skhu.domain.Lecture;
import net.skhu.domain.Notice;
import net.skhu.domain.Pagination;
import net.skhu.excel.ExcelRead;
import net.skhu.excel.ExcelReadOption;
import net.skhu.mapper.NoticeMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.io.File;
import java.util.List;
import java.util.Map;

@Service
public class NoticeService {
    @Autowired
    NoticeMapper noticeMapper;

    static String[] target = {"title, a.name"};

    /* 검색해서 리스트 조회*/
    public List<Notice> srchByNotiList(int currentPage, int pageSize, int choice, String srch) {
        return noticeMapper.findNotiBySrch(currentPage,pageSize,choice,srch);
    }

    public Notice findNotice(int id, int adminId){

        return noticeMapper.findNotice(id,adminId);
    }


    public int pageSrchCount(int choice, String srch){
        return noticeMapper.srchCount(choice,srch);
    }

    public int pageCount(){
        return noticeMapper.count();
    }


    public void notiUpdate(Notice notice){
        noticeMapper.update(notice);
    }

/*    public String[] selectChecKAndSearch(int choice)
    {
        if (choice == 0)
            return new String[]{"","",""};
        else if (choice == 1)
            return new String[]{"selected","",""};
        else if(choice == 2)
            return new String[]{"","selected",""};
        else
            return new String[]{"","","selected"};
    }*/

/*    public String[] selectCheckAndTwo(int choice)
    {
        String[] temp = new String[3];
        for (int i=1; i<=2; ++i)
            if (i == choice) temp[i] = "selected";
        return temp;
    }*/


    public String[] selectCheck(int choice)
    {
        if (choice == 0)
            return new String[]{"",""};
        else
            return new String[]{"","selected"};
    }


/*    public void excelUpload(File destFile) throws Exception {
        //엑셀 데이터를 읽기전 (경로, 컬럼, 추출할 행) 옵션 클래스 선언
        ExcelReadOption excelReadOption = new ExcelReadOption();
        //파일을 옵션에 담기
        excelReadOption.setFilePath(destFile.getAbsolutePath());
        //엑셀에서 읽을 컬럼 명 지정
        excelReadOption.setOutputColumns("A","B","C","D","E","F","G","H");
        //첫번째행은 컬럼명이여서 제외하고, 2번째부터 데이터 값 받기위해 설정
        excelReadOption.setStartRow(2);
        //엑셀파일 읽기어서 맵에 담기
        List<Map<String, String>> excelContent = ExcelRead.read(excelReadOption);

        //데이터를 담기위한 객체 선언
        Lecture lecture=null;

        //article.get() 리턴 타입이 String 이기때문에 int 형은 형변환을 해줘야한다.
        for (Map<String, String> article : excelContent) {
            //객체 안에 엑셀 데이터값 받아서 넣기
            lecture=new Lecture();
            lecture.setYear(Integer.valueOf(article.get("A")));
            lecture.setSemester(article.get("B"));
            lecture.setId(article.get("C"));
            lecture.setSplit(Integer.valueOf(article.get("D")));
            lecture.setTitle(article.get("E"));
            lecture.setAdmin_id(Integer.valueOf(article.get("F")));
            lecture.setCredit(Integer.valueOf(article.get("G")));
            lecture.setSubType(article.get("H"));

            //데이터값을 잘 가져오는 지 확인하기 위해
//            System.out.println(article.get("A"));
//            System.out.println(article.get("B"));
//            System.out.println(article.get("C"));
//            System.out.println(article.get("D"));
//            System.out.println(article.get("E"));
//            System.out.println(article.get("F"));
//            System.out.println(article.get("G"));
//            System.out.println(article.get("H"));

            //데이터 한개 행 담은 객체 insert
            this.lecInsert(lecture);

        }
    }*/

}
