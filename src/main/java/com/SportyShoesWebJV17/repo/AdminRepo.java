package com.SportyShoesWebJV17.repo;

import org.springframework.data.repository.CrudRepository;


import com.SportyShoesWebJV17.entity.AdminLog;

public interface AdminRepo extends CrudRepository<AdminLog, String>{

}