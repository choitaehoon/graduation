package net.skhu.domain;
import lombok.Data;

@Data

public class Qna {

    int id;
    String title;
    String body;
    int count;
    String wtime;
    int answerstate;

    int student_id;
    String studeentName;
    Student student;
/*    String student_name;*/

/*    List<Student> students;*/
}
