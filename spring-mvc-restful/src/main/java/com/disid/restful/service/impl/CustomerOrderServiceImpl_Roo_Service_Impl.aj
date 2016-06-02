// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.disid.restful.service.impl;

import com.disid.restful.model.Customer;
import com.disid.restful.model.CustomerOrder;
import com.disid.restful.repository.CustomerOrderRepository;
import com.disid.restful.repository.GlobalSearch;
import com.disid.restful.service.api.CustomerOrderService;
import com.disid.restful.service.impl.CustomerOrderServiceImpl;
import java.util.List;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

privileged aspect CustomerOrderServiceImpl_Roo_Service_Impl {
    
    declare parents: CustomerOrderServiceImpl implements CustomerOrderService;
    
    declare @type: CustomerOrderServiceImpl: @Service;
    
    declare @type: CustomerOrderServiceImpl: @Transactional(readOnly = true);
    
    public CustomerOrderRepository CustomerOrderServiceImpl.customerOrderRepository;
    
    @Transactional(readOnly = false)
    public CustomerOrder CustomerOrderServiceImpl.save(CustomerOrder entity) {
        return customerOrderRepository.save(entity);
    }
    
    @Transactional(readOnly = false)
    public void CustomerOrderServiceImpl.delete(Long id) {
         customerOrderRepository.delete(id);
    }
    
    @Transactional(readOnly = false)
    public List<CustomerOrder> CustomerOrderServiceImpl.save(Iterable<CustomerOrder> entities) {
        return customerOrderRepository.save(entities);
    }
    
    @Transactional(readOnly = false)
    public void CustomerOrderServiceImpl.delete(Iterable<Long> ids) {
        List<CustomerOrder> toDelete = customerOrderRepository.findAll(ids);
        customerOrderRepository.deleteInBatch(toDelete);
    }
    
    public List<CustomerOrder> CustomerOrderServiceImpl.findAll() {
        return customerOrderRepository.findAll();
    }
    
    public List<CustomerOrder> CustomerOrderServiceImpl.findAll(Iterable<Long> ids) {
        return customerOrderRepository.findAll(ids);
    }
    
    public CustomerOrder CustomerOrderServiceImpl.findOne(Long id) {
        return customerOrderRepository.findOne(id);
    }
    
    public long CustomerOrderServiceImpl.count() {
        return customerOrderRepository.count();
    }
    
    public Page<CustomerOrder> CustomerOrderServiceImpl.findAll(GlobalSearch globalSearch, Pageable pageable) {
        return customerOrderRepository.findAll(globalSearch, pageable);
    }
    
    public Long CustomerOrderServiceImpl.countByCustomerId(Long id) {
        return customerOrderRepository.countByCustomerId(id);
    }
    
    public Page<CustomerOrder> CustomerOrderServiceImpl.findAllByCustomer(Customer customerField, GlobalSearch globalSearch, Pageable pageable) {
        return customerOrderRepository.findAllByCustomer(customerField, globalSearch, pageable);
    }
    
}
