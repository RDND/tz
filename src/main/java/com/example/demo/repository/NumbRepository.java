package com.example.demo.repository;

import com.example.demo.model.Numb;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.rest.core.annotation.RestResource;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Transactional(readOnly = true)
public interface NumbRepository extends JpaRepository<Numb, Integer> {

    @RestResource(rel = "all", path = "all")
    List<Numb> findAll();
}
