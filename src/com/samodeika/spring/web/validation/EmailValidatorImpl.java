package com.samodeika.spring.web.validation;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;

public class EmailValidatorImpl implements ConstraintValidator<EmailValidator, String>{

	private int min;
	@Override
	public void initialize(EmailValidator constraintAnnotation) {
		min = constraintAnnotation.min();
	}

	@Override
	public boolean isValid(String email, ConstraintValidatorContext context) {
		
		if(email.length() < min){
			return false;
		}
		
		if(!org.apache.commons.validator.routines.EmailValidator.getInstance(false).isValid(email)){
			return false;
		}
		
		return true;
	}

}
