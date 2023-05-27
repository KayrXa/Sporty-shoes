package com.SportyShoesWebJV17.repo;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.SportyShoesWebJV17.dto.UserDTO;

public interface UserDTORepo extends CrudRepository<UserDTO, String>{
	
	public UserDTO findByEmail(String email);
	
	public List<UserDTO> findByLname(String lname);

}
