package com.disid.restful.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Embeddable;

import org.springframework.roo.addon.javabean.annotations.RooEquals;
import org.springframework.roo.addon.javabean.annotations.RooJavaBean;
import org.springframework.roo.addon.javabean.annotations.RooToString;

@RooJavaBean
@RooToString
@Embeddable
@RooEquals
public class OrderDetailPK implements Serializable {

    private static final long serialVersionUID = 8834571479446197507L;

    private Integer id;

    @Column(name = "customerOrderId")
    private Long customerOrderId;
}
