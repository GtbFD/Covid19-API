package com.gutemberg.api.covid19.controller;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.gutemberg.api.covid19.model.Status;
import com.gutemberg.api.covid19.repository.StatusRepository;

@Service
@RestController
public class StatusController {
	
	private StatusRepository repository;
	
	public StatusController(StatusRepository repository) {
		this.repository = repository;
	}
	
	@GetMapping(path = "/")
	public ResponseEntity<?> index() {
		return new ResponseEntity<>("Seja bem-vindo(a) a minha API", HttpStatus.OK);
	}
	
	@PostMapping(path = "/inserir")
	public ResponseEntity<?> insertDataTest(@RequestBody Status stats){
		return new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
	}
	
	@GetMapping(path = "/paises")
	public ResponseEntity<?> getStats(){
		return new ResponseEntity<>(repository.findAll(), HttpStatus.OK);
	}
	
	@GetMapping(path = "/pais/{pais}")
	public ResponseEntity<?> getStatsByCountry(@PathVariable(value = "pais") String pais){
		return new ResponseEntity<>(repository.findByPais(pais), HttpStatus.OK);
	}
	
	@RequestMapping(path = "/pais")
	public ResponseEntity<?> pais(){
		return new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
	}
	
	@PutMapping(path = "/atualizar")
	public ResponseEntity<?> atualizar(@RequestBody Status stats){
		return new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
	}
	
	@DeleteMapping(path = "/remover/{id}")
	public ResponseEntity<?> remover(@PathVariable(value = "id") Long id){
		return new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
	}
}
