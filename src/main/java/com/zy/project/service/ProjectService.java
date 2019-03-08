package com.zy.project.service;

import com.zy.project.pojo.Project;

import java.util.List;

public interface ProjectService {

    List<Project> getproject();

    Project getProjectById(Integer ps_id);
}
