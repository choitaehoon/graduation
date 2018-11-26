package net.skhu.domain;

import lombok.Data;

import java.util.Date;
import java.util.List;

@Data
public class Qnaanswer {
    int id;
    int admin_id;
    String body;
    int count;
    String time;
    int qna_id;
    int qnaanswercol;

    Qna qna;
    List<Qna> qnas;

    Student student;
    Admin admin;
    String adminName;
    String studentName;
    int student_id;

}
