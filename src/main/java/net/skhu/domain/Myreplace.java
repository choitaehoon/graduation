package net.skhu.domain;

import lombok.Data;

@Data
public class Myreplace {
    String replaceLecId;
    String closeLecId;
    String closeLecTitle;
    int studentId;

    MyLecture myLecture;
}
