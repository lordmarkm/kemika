package com.kemika.commons.models;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.core.style.ToStringCreator;

@Entity
@Table(name="messages")
public class Message {

	@Id
	@GeneratedValue
	private Long id;
	
	@Column(nullable=false, name="message_key")
	private String key;
	
	@Column(nullable=false, name="message")
	private String message;
	
	@Override
	public String toString() {
		return new ToStringCreator(this)
			.append("key", key)
			.append("message", message)
			.toString();
	}
	
	public String getKey() {
		return key;
	}
	public void setKey(String key) {
		this.key = key;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	
}
