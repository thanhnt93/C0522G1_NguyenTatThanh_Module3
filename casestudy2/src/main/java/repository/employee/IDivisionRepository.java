package repository.employee;

import model.Division;

import java.util.List;

public interface IDivisionRepository {
    List<Division> selectAllDivision();
}
