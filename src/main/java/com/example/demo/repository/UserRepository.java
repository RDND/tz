package com.example.demo.repository;

import com.example.demo.model.Number;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.rest.core.annotation.RestResource;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Transactional(readOnly = true)
public interface UserRepository extends JpaRepository<Number, Integer> {

    @RestResource(rel = "all", path = "all")
    List<Number> findAll();
}
