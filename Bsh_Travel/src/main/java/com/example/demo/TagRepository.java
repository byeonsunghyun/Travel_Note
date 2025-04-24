package com.example.demo;

import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;

public interface TagRepository extends JpaRepository<Tag, Integer> {
    List<Tag> findByName(String name);
    List<Tag> findByNumber(int number);
}
