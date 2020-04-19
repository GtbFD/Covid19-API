package com.gutemberg.api.covid19.repository;


import org.springframework.data.jpa.repository.JpaRepository;

import com.gutemberg.api.covid19.model.Status;


public interface StatusRepository extends JpaRepository<Status, Long> {
	Status findByPais(String pais);
}
