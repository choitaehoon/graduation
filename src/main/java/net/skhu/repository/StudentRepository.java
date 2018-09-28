package net.skhu.repository;


import net.skhu.domain.Student;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface StudentRepository extends JpaRepository<Student, Integer>
{
    Student findById(int id);
}
