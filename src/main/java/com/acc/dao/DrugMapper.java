package com.acc.dao;

import com.acc.pojo.Drugs;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface DrugMapper {
    //查找所有药品
    List<Drugs> queryAllDrug();

    //根据药品ID查找一个药品
    Drugs queryDrugById(@Param("id") int id);

    //根据药品名查找一个药品
    Drugs queryDrugByName(@Param("drugName") String drugName);

    //更新一个药品
    int updateDrug(Drugs drugs);

    //删除一个药品
    int deleteDrug(@Param("id") int id);

    //增加一个药品
    int addDrug(Drugs drugs);

}
