package com.jordan.dojosandninjas.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.jordan.dojosandninjas.models.Dojo;
import com.jordan.dojosandninjas.services.DojoService;
import com.jordan.dojosandninjas.services.NinjaService;

import jakarta.validation.Valid;

@Controller
public class DojoController {
	
	
	@Autowired
	private NinjaService ninjaservice;
	@Autowired
	private DojoService dojoservice;
	
	@GetMapping("/")
	public String Index() {
		return "redirect:/dojo/new";
	}
	
	@GetMapping("/dojo/new")
	public String Home(Model model) {
		Dojo dojo = new Dojo();
		model.addAttribute("newDojo", dojo);
		return "dojocreate.jsp";
	}
	
	@PostMapping("/process/dojo")
	public String createDojo(
			@Valid @ModelAttribute("newDojo") Dojo dojo, BindingResult bindingResult, Model model) {
			if(bindingResult.hasErrors()) {
				return "dojocreate.jsp";
			}
			dojoservice.createDojo(dojo);
			return "redirect:/ninja/new";
	}
	
	@GetMapping("dojo/{id}")
	public String showOneUser(@PathVariable("id") Long id, Model model) {
		Dojo dojo = dojoservice.getDojo(id);
		model.addAttribute("dojo", dojo);
		return "view.jsp";
	}
}
