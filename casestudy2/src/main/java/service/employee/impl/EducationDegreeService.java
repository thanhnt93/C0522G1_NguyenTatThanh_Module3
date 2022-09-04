package service.employee.impl;

import model.EducationDegree;
import repository.employee.IEducationDegreeRepository;
import repository.employee.impl.EducationDegreeRepository;
import service.employee.IEducationDegreeService;

import java.util.List;

public class EducationDegreeService implements IEducationDegreeService {
    private final IEducationDegreeRepository educationDegreeRepository = new EducationDegreeRepository();

    @Override
    public List<EducationDegree> selectAllEducationDegree() {
        return educationDegreeRepository.selectAllEducationDegree();
    }
}
