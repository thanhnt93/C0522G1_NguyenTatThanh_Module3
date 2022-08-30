package service.customer;

import model.CustomerType;
import repository.customer.ICustomerTypeRepository;
import repository.customer.impl.CustomerTypeRepository;
import service.ICustomerTypeService;

import java.util.List;

public class CustomerTypeService implements ICustomerTypeService {
    private final ICustomerTypeRepository customerTypeRepository = new CustomerTypeRepository();
    @Override
    public List<CustomerType> selectAllCustomerType() {

        return customerTypeRepository.selectAllCustomerType();
    }
}
