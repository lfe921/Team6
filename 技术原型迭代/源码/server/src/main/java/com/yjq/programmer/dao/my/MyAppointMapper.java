package com.yjq.programmer.dao.my;

import org.apache.ibatis.annotations.Param;

import java.util.Map;

public interface MyAppointMapper {

    // 根据时间范围获取预约总数
    Integer getAppointTotalByDate(@Param("queryMap") Map<String, Object> queryMap);
}
