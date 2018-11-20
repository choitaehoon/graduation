package net.skhu.domain;

import lombok.Data;


@Data
public class ReplaceLecture {

    String department; //담당학과
    String closeLecture; //폐지과목id, primaryKey
    String closeLecTitle; //폐지과목명
    String subType; // 이수구분
    int credit; //이수학점
    String replaceLecture; //대체과목아이디, 0이면 전선으로 대체
    String replaceLecTitle;//대체과목명

    Lecture lecture;
    Admin admin;

}

