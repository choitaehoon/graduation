package net.skhu.domain;

import lombok.Data;


@Data

public class ReplaceLecture {

    int replace_id;
    String closeLecture;
    String replaceLecture;

    Lecture lecture;
    Admin admin;

    int year;
    String semester;
    int id;
    int split;
    String title;
    int admin_id;
    int credit;
    String subType;

    String closeLectureName;
}

