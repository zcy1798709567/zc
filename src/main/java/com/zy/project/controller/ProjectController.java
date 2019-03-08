package com.zy.project.controller;

import com.zy.project.pojo.Project;
import com.zy.project.service.ProjectService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/projectMasage")
public class ProjectController {

    @Autowired
   private ProjectService prose;

    @RequestMapping("/getproject")
    @ResponseBody
    public Map<String,Object> getproject(){
        Map<String,Object> map = new HashMap<>();
        List<Project> list = prose.getproject();
        map.put("code",0);
        map.put("msg","项目数据");
        map.put("count",100);
        map.put("data",list);
        return map;
    }

    @RequestMapping("/getProjectById")
    public String getProjectById(Integer ps_id, Model model){
        Project project = prose.getProjectById(ps_id);
        System.out.println(project);
        model.addAttribute("project",project);
        return "project/projectOne";
    }

   /* @RequestMapping("/toprojectOne")
    public String toprojectOne(){
        return "project/projectOne";
    }*/

}
