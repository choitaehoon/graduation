package net.skhu.repository;


import net.skhu.domain.Student;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface StudentRepository extends JpaRepository<Student, Integer>
{
    Student findById(int id);
    Student findByTypeAndId(int type, int id);
    int countByIdAndPassword(int id, String password);
}
