package com.acc.controller;

import com.acc.pojo.Drugs;
import com.acc.service.DrugService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/drug")
public class DrugController {

    @Autowired
    @Qualifier("DrugServiceImpl")
    private DrugService drugService;

    //查询所有药品，并且返回到一个书籍展示页面
    @RequestMapping("/allDrug")
    public String list(Model model){
        List<Drugs> list = drugService.queryAllDrug();
        model.addAttribute("list",list);
        return "allDrug";
    }

    //跳转到增加书籍页面
    @RequestMapping("/toAddDrug")
    public String toAddPaper(){
        return "addDrug";
    }

    //新增药品
    @RequestMapping("/addDrug")
    public String addDrug(Drugs drugs){
        drugService.addDrug(drugs);
        return "redirect:/drug/allDrug";
    }


}
