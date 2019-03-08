package com.zy.hindex.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Hindex {

	@RequestMapping("/toProject")
	public String toProject(){
		return "project/allproject";
	}
}
