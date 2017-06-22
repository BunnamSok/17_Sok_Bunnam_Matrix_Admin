package org.hrd.template.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PageController {
	@RequestMapping({"/", "/home", "/dashboard"})
	public String dashBoard(Model model) {
		model.addAttribute("LINK", "/dashboard");
		model.addAttribute("CONTENT_HEADER", "Dashboard");
		model.addAttribute("ACT_DASH", "active");
		return "dashboard";
	}
	
	@RequestMapping({"/user-cu"})
	public String userCU(Model model) {
		model.addAttribute("LINK", "/user-cu");
		model.addAttribute("CONTENT_HEADER", "User CU");
		model.addAttribute("ACT_USER", "active");
		return "user-cu";
	}
	
	@RequestMapping({"/user-list"})
	public String userList(Model model) {
		model.addAttribute("LINK", "/user-list");
		model.addAttribute("CONTENT_HEADER", "User List");
		model.addAttribute("ACT_USER_LIST", "active");
		return "user-list";
	}
	
	@RequestMapping({"/role-cu"})
	public String roleCU(Model model) {
		model.addAttribute("LINK", "/role-cu");
		model.addAttribute("CONTENT_HEADER", "Role CU");
		model.addAttribute("ACT_ROLE", "active");
		return "role-cu";	
	}
	
	@RequestMapping({"/role-list"})
	public String roleList(Model model) {
		model.addAttribute("LINK", "/role-list");
		model.addAttribute("CONTENT_HEADER", "Role List");
		model.addAttribute("ACT_ROLE_LIST", "active");
		return "role-list";
	}
}
