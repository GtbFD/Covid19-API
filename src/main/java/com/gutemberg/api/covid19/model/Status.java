package com.gutemberg.api.covid19.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity
@Table(name = "status")

public class Status {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@JsonIgnore
	private Long id;
	
	@Column(name = "total_casos")
	private int totalCasos;
	
	@Column(name = "total_mortes")
	private int totalMortes;
	
	@Column(name = "curados")
	private int curados;
	
	@Column(name = "pais")
	//@JsonIgnore
	private String pais;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public int getTotalCasos() {
		return totalCasos;
	}

	public void setTotalCasos(int totalCasos) {
		this.totalCasos = totalCasos;
	}

	public int getTotalMortes() {
		return totalMortes;
	}

	public void setTotalMortes(int totalMortes) {
		this.totalMortes = totalMortes;
	}

	public int getCurados() {
		return curados;
	}

	public void setCurados(int curados) {
		this.curados = curados;
	}

	public String getPais() {
		return pais;
	}

	public void setPais(String pais) {
		this.pais = pais;
	}
	
}
