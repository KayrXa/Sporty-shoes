package com.SportyShoesWebJV17.repo;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.SportyShoesWebJV17.entity.Shoes;

public interface ShoesRepo extends CrudRepository<Shoes, String>{
	
	public List<Shoes> findByStatus(String status);

}