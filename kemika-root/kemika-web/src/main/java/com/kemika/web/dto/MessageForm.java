package com.kemika.web.dto;

import org.hibernate.validator.constraints.NotEmpty;

import com.kemika.commons.models.Message;

public class MessageForm {

	private long id;
	
	@NotEmpty(message = "Key can't be null")
	private String key;
	
	private String description;

	@NotEmpty(message = "Message can't be null")
	private String message;
	
	public MessageForm() {
		//
	}
	
	public MessageForm(Message msg) {
		this.id = msg.getId();
		this.key = msg.getKey();
		this.description = msg.getDescription();
		this.message = msg.getMessage();
	}
	
	public Message toMessage() {
		Message msg = new Message();
		msg.setId(id);
		msg.setKey(key);
		msg.setDescription(description);
		msg.setMessage(message);
		return msg;
	}
	
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public String getKey() {
		return key;
	}
	public void setKey(String key) {
		this.key = key;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	
}
