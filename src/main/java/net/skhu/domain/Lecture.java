package net.skhu.domain;

import lombok.Data;
import lombok.ToString;

@Data
@ToString(exclude = "admin")
public class Lecture
{
    int year;
    String semester;
    String id;
    int split;
    String title;
    int admin_id;
    int credit;
    int num;// 과목 인덱스

    Admin admin;

    String subType;
    String detailType;
    String grade;
    String gradeA;



}
