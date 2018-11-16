package net.skhu.domain;
import lombok.Data;

@Data
public class Notice {

    int id;
    String title;
    String body;
    int count;
    String time;
    String file;
    String target;
    int admin_id;
    String adminName;

    Admin admin;
    Student student;

    String admin_name;
}
