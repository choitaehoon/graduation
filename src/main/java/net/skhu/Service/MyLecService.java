package net.skhu.Service;

import net.skhu.domain.Lecture;
import net.skhu.domain.MyLecture;
import net.skhu.excel.ExcelRead;
import net.skhu.excel.ExcelReadOption;
import net.skhu.mapper.MyLectureMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.io.File;
import java.util.List;
import java.util.Map;

@Service
public class MyLecService {
    @Autowired
    MyLectureMapper myLectureMapper;

    //수업한개를 조회하기위해서 년도 학기 과목코드 학번필요

    public MyLecture findOneMyLecSet(int year, String semester, String lectureId,int studentId, String title, String detailType, String credit, String grade){
        MyLecture myLecSet=new MyLecture();

        myLecSet.setLecture_year(year);
        myLecSet.setLecture_semester(semester);
        myLecSet.setLecture_id(lectureId);
        myLecSet.setStudent_id(studentId);
        myLecSet.setTitle(title);
        myLecSet.setDetailType(detailType);
        myLecSet.setCredit(credit);
        myLecSet.setGrade(grade);
        return  myLecSet;
    }
    /*
    mylecture, 내가 수강한 수업을 엑셀 등록하기 위해
     */
    public void excelUpload(File destFile,int userId) throws Exception {
        //엑셀 데이터를 읽기전 (경로, 컬럼, 추출할 행) 옵션 클래스 선언
        ExcelReadOption excelReadOption = new ExcelReadOption();
        //파일을 옵션에 담기
        excelReadOption.setFilePath(destFile.getAbsolutePath());
        //엑셀에서 읽을 컬럼 명 지정
        excelReadOption.setOutputColumns("A","B","C","D","E","F","G");
        //첫번째행은 컬럼명이여서 제외하고, 2번째부터 데이터 값 받기위해 설정
        excelReadOption.setStartRow(2);
        //엑셀파일 읽기어서 맵에 담기
        List<Map<String, String>> excelContent = ExcelRead.read(excelReadOption);

        //데이터를 담기위한 객체 선언
        MyLecture myLecture=null;

        //article.get() 리턴 타입이 String 이기때문에 int 형은 형변환을 해줘야한다.
        for (Map<String, String> article : excelContent) {

            //객체 안에 엑셀 데이터값 받아서 넣기
            myLecture=new MyLecture();
            myLecture.setLecture_year(Integer.valueOf(article.get("A")));//년도
            myLecture.setLecture_semester(article.get("B"));//학기
            myLecture.setLecture_id(article.get("C"));//과목코드
            myLecture.setLecture_split(1);//분반
            myLecture.setTitle(article.get("D"));//과목명
            myLecture.setDetailType(article.get("E"));//전필, 전선, 패논패, 채플
            myLecture.setCredit(article.get("F"));//이수학점
            myLecture.setGrade(article.get("G"));//내가 받은 점수 (A,B,C...)
            myLecture.setStudent_id(userId);//학생
            myLecture.setRemove(0);// 내가 들은 수업이니까 0으로 지정

            //데이터값을 잘 가져오는 지 확인하기 위해
//            System.out.println(article.get("A"));
//            System.out.println(article.get("B"));
//            System.out.println(article.get("C"));
//            System.out.println(article.get("D"));
//            System.out.println(article.get("E"));
//            System.out.println(article.get("F"));
//            System.out.println(article.get("G"));
//            System.out.println(article.get("H"));
//            System.out.println(Integer.toString(userId));

            //데이터 한개 행 담은 객체 insert
            myLectureMapper.insert(myLecture);

        }
    }
}
