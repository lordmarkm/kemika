package com.kemika.web.msgsource;

import java.text.MessageFormat;
import java.util.Locale;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.support.AbstractMessageSource;
import org.springframework.stereotype.Component;

import com.kemika.commons.models.Message;
import com.kemika.commons.services.MessageService;

@Component
public class DbMessageSource extends AbstractMessageSource {

	@Autowired
	private MessageService messages;
	
	@Override
	protected MessageFormat resolveCode(String code, Locale locale) {
		Message message = messages.findByKey(code);
		return createMessageFormat(message.getMessage(), locale);
	}

}
