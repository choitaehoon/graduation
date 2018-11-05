package net.skhu.domain;

import lombok.Data;


@Data

public class ReplaceLecture {

    int replace_id;
    String closeLecture;
    String replaceLecture;

    Lecture lecture;

    int year;
    String semester;
    String title;
    int admin_id;
    int credit;
    String subType;
}

