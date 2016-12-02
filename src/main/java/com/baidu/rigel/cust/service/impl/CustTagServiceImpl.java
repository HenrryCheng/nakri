/*
 * Copyright (C) 2016 Baidu, Inc. All Rights Reserved.
 */
package com.baidu.rigel.cust.service.impl;

import com.baidu.rigel.cust.dao.CustTagDao;
import com.baidu.rigel.cust.service.CustTagService;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

/**
 * Service implement class for model : com.baidu.rigel.cust.bo.CustTagBase
 *
 * @author BJF
 */
@Service("custTagService")
public class CustTagServiceImpl implements CustTagService {

    private static final Logger LOGGER = Logger.getLogger(CustTagServiceImpl.class);


    /**
     * Dao 'custTagDao' reference.
     */
    @Resource(name = "custTagDao")
    private CustTagDao custTagDao;


}