package com.kemika.commons.services;

import org.springframework.data.jpa.repository.JpaRepository;

import com.kemika.commons.models.Image;

/**
 * @author mbmartinez
 */
public interface ImageService extends JpaRepository<Image, Long> {
}
