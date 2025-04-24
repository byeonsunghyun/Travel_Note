package com.example.demo;

import java.util.List;


import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import org.springframework.data.domain.Sort;


@Repository
public interface TravelRepository extends JpaRepository<Travel, Integer> {
	List<Travel> findByNameContaining(String keyword);
	List<Travel> findByIdIn(List<Integer> ids);
	List<Travel> findByNameContaining(String keyword, Sort sort);
	List<Travel> findByIdIn(List<Integer> ids, Sort sort);

	
	List<Travel> findAll(Sort sort);

	List<Tag> findByName(String name);
}
