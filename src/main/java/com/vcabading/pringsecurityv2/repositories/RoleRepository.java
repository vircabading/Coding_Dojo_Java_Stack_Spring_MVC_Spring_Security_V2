package com.vcabading.pringsecurityv2.repositories;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.vcabading.pringsecurityv2.models.Role;

@Repository
public interface RoleRepository extends CrudRepository<Role, Long> {
}