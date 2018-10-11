package net.skhu.repository;

import net.skhu.domain.Professor;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface ProfessorRepository extends JpaRepository<Professor, Integer>
{
    Professor findByTypeAndId(int type,int id);
    Professor findById(int id);
}
