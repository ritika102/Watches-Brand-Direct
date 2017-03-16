package com.WatchesBrandDirect.dao;

import com.WatchesBrandDirect.model.Customer;

public interface CustomerDao {
void saveCustomer(Customer customer);
Customer getCustomerByUsername(String username);
}