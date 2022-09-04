package service.employee.impl;

import model.Position;
import repository.employee.IPositionRepository;
import repository.employee.impl.PositionRepository;
import service.employee.IPositionService;

import java.util.List;

public class PositionService implements IPositionService {
    private final IPositionRepository positionRepository = new PositionRepository();

    @Override
    public List<Position> selectAllPosition() {
        return positionRepository.selectAllPosition();
    }
}
