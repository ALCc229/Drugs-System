package com.acc.service;

import com.acc.dao.DrugMapper;
import com.acc.pojo.Drugs;

import java.util.List;

public class DrugServiceImpl implements DrugService{

    private DrugMapper drugMapper;

    public DrugMapper getDrugMapper() {
        return drugMapper;
    }

    public void setDrugMapper(DrugMapper drugMapper) {
        this.drugMapper = drugMapper;
    }

    @Override
    public List<Drugs> queryAllDrug() {
        return drugMapper.queryAllDrug();
    }

    @Override
    public Drugs queryDrugById(int id) {
        return drugMapper.queryDrugById(id);
    }

    @Override
    public Drugs queryDrugByName(String drugName) {
        return drugMapper.queryDrugByName(drugName);
    }

    @Override
    public int updateDrug(Drugs drugs) {
        return drugMapper.updateDrug(drugs);
    }

    @Override
    public int deleteDrug(int id) {
        return drugMapper.deleteDrug(id);
    }

    @Override
    public int addDrug(Drugs drugs) {
        return drugMapper.addDrug(drugs);
    }
}
