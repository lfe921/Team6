package com.yjq.programmer.dao;

import com.yjq.programmer.domain.Left;

public interface LeftMapper {

    int insert(Left record);

    Left selectByPrimaryKey(Left record);

    int updateByPrimaryKeySelective(Left record);
}