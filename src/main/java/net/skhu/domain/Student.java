package net.skhu.domain;

import lombok.Data;

import java.util.List;

@Data
public class Student
{
    int id;
    String name;
    String name1;
    String password;
    String email;
    String phone;
    String comment;
    double totalCredit;
    double avgGrade;
    double avgMajor;
    String question;
    Department department;
    int type;
    int myGrade;//학년

    int semester;

    int department_id;
    String departmentName;

    int graduationRule_id;
    String detailType;
    int majorGoal;
    int cultureGoal;

    List<Lecture> myLecture;

}
