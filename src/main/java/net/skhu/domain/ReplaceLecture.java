package net.skhu.domain;

import lombok.Data;


@Data
public class ReplaceLecture {

    int replace_id;
    String closeLecture;
    String replaceLecture;
    int LId;

    Lecture lecture;
    Admin admin;

    int year;
    String semester;
    String id;
    int split;
    String title;
    int admin_id;
    int credit;
    String subType;

    String closeLectureName;
}

