package com.zy.project.dao;

import com.zy.project.pojo.Project;

import java.util.List;

public interface ProjectDao {
    List<Project> getproject();

    Project getProjectById(Integer ps_id);
}
