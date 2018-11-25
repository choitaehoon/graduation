package net.skhu.domain;

import lombok.Data;

import java.util.Date;

@Data
public class Qnaanswer {
    int id;
    int admin_id;
    String body;
    int count;
    Date time;
    int qna_id;
    int qnaanswercol;

    Qna qna;
    Student student;
    Admin admin;
    String adminName;
    String studentName;
    int student_id;

}
