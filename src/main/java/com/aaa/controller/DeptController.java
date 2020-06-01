package com.aaa.controller;

import com.aaa.biz.DeptBiz;
import com.aaa.entity.Dept;
import com.aaa.entity.LayUiTable;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.List;

/**
 * @Author: 陈建
 * @Date: 2020/5/29 0029 16:27
 * @Version 1.0
 */
@Controller
@RequestMapping("/dept")
public class DeptController {
    @Autowired
    private DeptBiz deptBizImpl;
    @Autowired
    private DeptBiz deptBiz;
    @RequestMapping("/toShowDept")
    public String  toShowDept(){
        return "dept/showDept";
    }

    @RequestMapping("/showDept")
    @ResponseBody
    public LayUiTable showDept(Model model) {
        //开始查询
        List<Dept> deptList = deptBizImpl.selectAllDept();
        LayUiTable layUiTable = new LayUiTable();
        layUiTable.setCode(0);
        layUiTable.setMsg("返回消息");
        layUiTable.setData(deptList);
        List<Dept> depts = deptBiz.selectAllDept();
        model.addAttribute("depts",depts);
        return layUiTable;
    }
}
