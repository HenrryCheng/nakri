/*
 * Copyright (C) 2016 Baidu, Inc. All Rights Reserved.
 */
package com.baidu.rigel.jichuang.dao;

import java.util.List;

import com.baidu.rigel.jichuang.bo.CustTradeSelf;
import com.baidu.rigel.jichuang.bo.Trade;
import com.baidu.rigel.jichuang.bo.TradeGraphCust;
import com.baidu.rigel.jichuang.bo.TradeGraphDown;
import com.baidu.rigel.jichuang.bo.TradeGraphUp;

/**
 * Created by zhanghu02 on 2016/10/25.
 */
public interface TradeDao {

    List<Trade> getAllTrade();

    String getTradeNameById(Long id);

    CustTradeSelf getCustTradeById(Long id);

    List<TradeGraphCust> queryTradeCustByTradeId(Long id);

    List<TradeGraphDown> queryTradeDownByTradeId(Long id);

    List<TradeGraphUp> queryTradeUpByTradeId(Long id);

    void saveTradeCust(TradeGraphCust tradeGraphCust);

    void saveTradeCustUp(TradeGraphUp tradeGraphUp);

    void saveTradeCustDown(TradeGraphDown tradeGraphDown);
}
