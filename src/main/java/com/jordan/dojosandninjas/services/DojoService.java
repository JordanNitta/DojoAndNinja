package com.jordan.dojosandninjas.services;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.jordan.dojosandninjas.models.Dojo;
import com.jordan.dojosandninjas.repositories.DojoRepository;

@Service
public class DojoService {
	private final DojoRepository dojoRepository;
	
	public DojoService(DojoRepository dojoRepository) {
		this.dojoRepository = dojoRepository;
	}
	
	public Dojo createDojo(Dojo dojo) {
		return dojoRepository.save(dojo);
	}
	
	public List<Dojo> getAll(){
		return dojoRepository.findAll();
	}
	
	public Dojo getDojo(Long id) {
		Optional<Dojo> potentialDojo= dojoRepository.findById(id);
		return potentialDojo.isPresent() ? potentialDojo.get() : null;
	}
}
