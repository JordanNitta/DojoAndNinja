package com.jordan.dojosandninjas.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.jordan.dojosandninjas.models.Dojo;
import com.jordan.dojosandninjas.models.Ninja;
import com.jordan.dojosandninjas.services.DojoService;
import com.jordan.dojosandninjas.services.NinjaService;

import jakarta.validation.Valid;

@Controller
public class NinjaController {
	
	@Autowired
	private NinjaService ninjaservice;
	@Autowired
	private DojoService dojoservice;
	
	
	@GetMapping("/ninja/new")
	public String ninjaForm(@ModelAttribute("newNinja") Ninja ninja, Model model) {
			List<Dojo> allDojos = dojoservice.getAll();
			model.addAttribute("allDojos", allDojos);
			return "ninjacreate.jsp";
	}
	
	
	@PostMapping("/process/ninja")
	public String createNinja(
			@Valid @ModelAttribute("newNinja") Ninja ninja, BindingResult bindingResult, Model model) {
			if(bindingResult.hasErrors()) {
				List<Dojo> allDojos = dojoservice.getAll();
				model.addAttribute("allDojos", allDojos);
				return "ninjacreate.jsp";
			}
			
			ninjaservice.create(ninja);
			model.addAttribute("newNinja", new Ninja());
			Dojo dojo = ninja.getDojo();
			Long id = dojo.getId();
			
			return "redirect:/dojo/" + id;
	}
}
