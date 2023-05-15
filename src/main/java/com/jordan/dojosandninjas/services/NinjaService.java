package com.jordan.dojosandninjas.services;

import java.util.List;

import org.springframework.stereotype.Service;

import com.jordan.dojosandninjas.models.Ninja;
import com.jordan.dojosandninjas.repositories.NinjaRepository;

@Service
public class NinjaService {
	private final NinjaRepository ninjaRepository;
	
	public NinjaService(NinjaRepository ninjaRepository) {
		this.ninjaRepository = ninjaRepository;
	}
	
	public List<Ninja> allNinjas(){
		return ninjaRepository.findAll();
	}
	
	public Ninja create(Ninja ninja) {
		return ninjaRepository.save(ninja);
	}
	
}
