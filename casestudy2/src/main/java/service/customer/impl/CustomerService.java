package service.customer.impl;

import model.Customer;
import repository.customer.ICustomerRepository;
import repository.customer.impl.CustomerRepository;
import service.customer.ICustomerService;


import java.sql.SQLException;
import java.util.List;

public class CustomerService implements ICustomerService {
    private final ICustomerRepository iCustomerRepository  = new CustomerRepository();
    @Override
    public void createCustomer(Customer customer) throws SQLException {
        iCustomerRepository.createCustomer(customer);
    }

    @Override
    public Customer selectCustomer(int id) {
        return null;
    }

    @Override
    public List<Customer> selectAllCustomer() {
        return iCustomerRepository.selectAllCustomer();
    }

    @Override
    public boolean deleteCustomer(int id) throws SQLException {
        return iCustomerRepository.deleteCustomer(id);
    }

    @Override
    public boolean updateCustomer(Customer customer) throws SQLException {
        return iCustomerRepository.updateCustomer(customer);
    }

    @Override
    public Customer findById(int id) {
        return iCustomerRepository.findById(id);
    }

    @Override
    public List<Customer> searchByName(String nameSearch) {
        return iCustomerRepository.searchByName(nameSearch);
    }
}
