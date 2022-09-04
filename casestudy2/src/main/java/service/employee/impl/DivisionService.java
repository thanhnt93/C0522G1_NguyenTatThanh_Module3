package service.employee.impl;

import model.Division;
import repository.employee.IDivisionRepository;
import repository.employee.impl.DivisionRepository;
import service.employee.IDivisionService;

import java.util.List;

public class DivisionService implements IDivisionService {
    private final IDivisionRepository divisionRepository = new DivisionRepository();
    @Override
    public List<Division> selectAllDivision() {
        return divisionRepository.selectAllDivision();
    }
}
