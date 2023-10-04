package com.robertp.testW6L1.repositories;

import java.util.Optional;

import org.springframework.data.repository.CrudRepository;

import com.robertp.testW6L1.models.User;

public interface UserRepository extends CrudRepository<User, Long> {
	
	Optional<User> findByEmail(String email);

}
