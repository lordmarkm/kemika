package com.kemika.commons.services;

import org.springframework.data.jpa.repository.JpaRepository;

import com.kemika.commons.models.Message;

/**
 * @author Mark
 */
public interface MessageService extends JpaRepository<Message, Long> {
	Message findByKey(String key);
}
