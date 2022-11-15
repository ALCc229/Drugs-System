package com.acc.service;

import com.acc.pojo.Drugs;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface DrugService {
    //查找所有药品
    List<Drugs> queryAllDrug();

    //根据药品ID查找一个药品
    Drugs queryDrugById(int id);

    //根据药品名查找一个药品
    Drugs queryDrugByName(String drugName);

    //更新一个药品
    int updateDrug(Drugs drugs);

    //删除一个药品
    int deleteDrug(int id);

    //增加一个药品
    int addDrug(Drugs drugs);
}
