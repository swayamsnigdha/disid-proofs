// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.disid.restful.model;

import com.disid.restful.model.CustomerOrder;
import com.disid.restful.model.OrderDetail;
import com.disid.restful.model.Product;

privileged aspect OrderDetail_Roo_JavaBean {
    
    public Integer OrderDetail.getQuantity() {
        return this.quantity;
    }
    
    public void OrderDetail.setQuantity(Integer quantity) {
        this.quantity = quantity;
    }
    
    public Product OrderDetail.getProduct() {
        return this.product;
    }
    
    public void OrderDetail.setProduct(Product product) {
        this.product = product;
    }
    
    public CustomerOrder OrderDetail.getCustomerOrder() {
        return this.customerOrder;
    }
    
    public void OrderDetail.setCustomerOrder(CustomerOrder customerOrder) {
        this.customerOrder = customerOrder;
    }
    
}
