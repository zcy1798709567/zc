package com.zy.project.service.imp;

import com.zy.project.dao.ProjectDao;
import com.zy.project.pojo.Project;
import com.zy.project.service.ProjectService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ProjectServiceImp implements ProjectService {

    @Autowired
    private ProjectDao prod;

    @Override
    public List<Project> getproject() {
        return prod.getproject();
    }

    @Override
    public Project getProjectById(Integer ps_id) {
        return prod.getProjectById(ps_id);
    }
}
