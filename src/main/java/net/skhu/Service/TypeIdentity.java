package net.skhu.Service;

import net.skhu.repository.ProfessorRepository;
import net.skhu.repository.StudentRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class TypeIdentity
{

    @Autowired
    StudentRepository studentRepository;
    @Autowired
    ProfessorRepository professorRepository;

    public Object typeSearch(int type, int id)
    {
        if (type == 1)
            return studentRepository.findByTypeAndId(type, id);
        else
            return professorRepository.findByTypeAndId(type, id);
    }

    public Object distinct(int id, String password)
    {
        if (studentRepository.countByIdAndPassword(id,password) == 1)
            return studentRepository.findById(id);
        else
            return professorRepository.findById(id);
    }
}
