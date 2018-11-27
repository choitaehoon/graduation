package net.skhu.domain;

import lombok.Data;

@Data
public class Lecture
{
    int year;
    String semester;
    String semester1;
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


    @Override
    public String toString() {
        return "Lecture{" +
                "year=" + year +
                ", semester='" + semester + '\'' +
                ", id='" + id + '\'' +
                ", split=" + split +
                ", title='" + title + '\'' +
                ", admin_id=" + admin_id +
                ", credit=" + credit +
                ", admin=" + admin +
                ", subType='" + subType + '\'' +
                ", detailType='" + detailType + '\'' +
                ", grade='" + grade + '\'' +
                ", gradeA='" + gradeA + '\'' +
                '}';
    }
}
