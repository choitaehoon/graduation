package net.skhu.domain;

import lombok.Data;

@Data
public class Lecture
{
    int year;
    String semester;
    String id;
    int split;
    String title;
    int admin_id;
    int credit;

    Admin admin;

    String subType;
    String detailType;
    String grade;
    String gradeA;




}
