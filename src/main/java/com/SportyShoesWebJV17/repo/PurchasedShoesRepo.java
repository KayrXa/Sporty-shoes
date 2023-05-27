package com.SportyShoesWebJV17.repo;

import org.springframework.data.repository.CrudRepository;

import com.SportyShoesWebJV17.entity.PurchasedShoes;

public interface PurchasedShoesRepo extends CrudRepository<PurchasedShoes, String> {

}
