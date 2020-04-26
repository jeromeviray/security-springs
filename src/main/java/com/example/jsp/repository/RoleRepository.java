package com.example.jsp.repository;

import com.example.jsp.model.Role;
import org.springframework.data.jpa.repository.JpaRepository;

public interface RoleRepository extends JpaRepository<Role, Integer> {
    Role findByAuthority(String role);
}
