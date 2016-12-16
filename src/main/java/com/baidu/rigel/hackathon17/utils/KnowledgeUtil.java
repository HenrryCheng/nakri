/*
 * Copyright (C) 2016 Baidu, Inc. All Rights Reserved.
 */
package com.baidu.rigel.hackathon17.utils;

import java.util.HashMap;
import java.util.Map;

/**
 * Created by yangchuanlian on 2016/12/14.
 */
public class KnowledgeUtil {

    public static Map<String, String> knowledgeMap = new HashMap<String, String>();

    static {
        knowledgeMap.put("百度推广是什么", "百度推广是国内首创的一种按效果付费的网络推广方式，简单便捷的网页操作即可给企业带来大量潜在客户，有效提升企业知名度及销售额。每天有超过1亿人次在百度查找信息，企业在百度注册与产品相关的关键词后，就会被主动查找这些产品的潜在客户找到");
        knowledgeMap.put("百度推广怎么收费", "我们百度推广是按有效点击来付费的，只有有效的点击系统才会扣费。有效的点击是指：系统会通过各种参数设定来判断什么样的点击会称为有效点击，具体情况可以给您安排推广顾问联系。");
        knowledgeMap.put("百度是竞价排名么", "您的排名是由出价和质量度共同决定的，当中涉及很多因素，并不只是出价");
        knowledgeMap.put("怎么预防恶意点击", "我们百度有非常完善的过滤系统，当中涉及十几个参数，所以您不需要担心恶意点击问题");
        knowledgeMap.put("百度推广可以试用么", "我们为您在网站上展示信息是不收费的，只有当网民有效点击进入了您的网站，我们才会收取一定的费用");
        knowledgeMap.put("为什么不同地域收费不一样", "“专业服务费”是指用于购买百度提供的百度推广服务专业服务的费用，但由于各地代理商会提供多元化的服务，因此会有所不同");
    }

}
