package net.skhu.domain;

import lombok.Data;

@Data
public class MyLecture
{
    int id;
    int lecture_year;
    String lecture_semester;
    String lecture_id;
    int lecture_split;
    String title;
    String detailType2;
    String detailType;
    String credit;
    String grade;
    int student_id;
    String gradeA;
    int remove;
    int majorSearch;
    int changeMajor;

    String closeLecId;
    String closeLecTitle;
}
