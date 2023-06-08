package com.abctours.tourSystem.service;

import com.abctours.tourSystem.model.Customer;
import com.abctours.tourSystem.repository.CustomerRepository;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

/**
 * This class contains methods for customer
 */
@Service
public class CustomerService {
    @Autowired
    private CustomerRepository customerRepositoryobject;
    /**
     * Creating LOG
     */
    private static Logger LOG = LoggerFactory.getLogger(CustomerService.class);
    /**
     *
     *This method returns all the Customer
     * @return List<Customer>
     */
    public List<Customer> findAll(){
        List<Customer> customers = customerRepositoryobject.findAll();
        LOG.info("Successfully retrieved all the customer details");
        return customers;
    }
    /**
     *This method returns customer for a given id
     * @param id
     * @return Optional<customer>
     */
    public Optional<Customer> findById(int id){
        Optional<Customer> customer = customerRepositoryobject.findById(id);
        LOG.info("Successfully retrieved customer details for the given id");
        return customer;
    }
    /**
     * this method saves a customer and returns it
     * @param customerobject
     * @return
     */

    public Customer saveCustomer(Customer customerobject){
        Customer savedCustomers = customerRepositoryobject.save(customerobject);
        LOG.info("successfully saved customer for the given details.");
        return savedCustomers;
    }
    /**
     *
     * This method updates a customer of given id
     * @param id
     * @param customer
     * @return
     */
    public Customer updatecustomer(int id, Customer customer) {
        LOG.info("updating customer for a given id.");
        Customer updatecustomer = customerRepositoryobject.findById(id).orElse(null);
        if (updatecustomer != null){
            updatecustomer.setFirstname(customer.getFirstname());
            updatecustomer.setLastname(customer.getLastname());
            updatecustomer.setMobile(customer.getMobile());
            updatecustomer.setEmail(customer.getEmail());
            updatecustomer.setPassword(customer.getPassword());
            updatecustomer.setAddress(customer.getAddress());
            updatecustomer.setCountry(customer.getCountry());
            customerRepositoryobject.save(updatecustomer);
        }else{
            LOG.warn("No customer details for the given id");
        }
        return updatecustomer;
    }
    /**
     *This method deletes a customer for given id
     * @param id
     */
    public void deleteById(int id){
        customerRepositoryobject.deleteById(id);
        LOG.info("Successfully deleted the details of the given id.");
    }
    public boolean login(Customer customer) {
        Optional<Customer> login = customerRepositoryobject.findByEmailAndPassword(customer.getEmail(), customer.getPassword());
        LOG.info("Customer found and given credentials");
        return login.isPresent();
    }
}

