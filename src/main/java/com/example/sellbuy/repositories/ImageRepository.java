package com.example.sellbuy.repositories;

import com.example.sellbuy.models.Image;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ImageRepository extends JpaRepository<Image, Long> {
}
