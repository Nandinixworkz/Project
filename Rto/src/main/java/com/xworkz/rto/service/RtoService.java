package com.xworkz.rto.service;

import java.util.List;
import java.util.Set;

import javax.validation.ConstraintViolation;

import com.xworkz.rto.dto.LLDto;
import com.xworkz.rto.dto.RtoDto;


public interface RtoService {

	public abstract Set<ConstraintViolation<RtoDto>> onSave(RtoDto dto);
	public abstract List<RtoDto> findAll();
	public abstract RtoDto checkLogin(String emailId,String otp);
	public abstract List<RtoDto> findByState(String state);
	public abstract Set<ConstraintViolation<LLDto>> save(LLDto dto);
	public abstract List<LLDto> userByState(String state);
	public abstract LLDto userLogin(String apporcontno, String dob); 
	public abstract boolean updateById(int id);
	public abstract boolean updateOtpById(RtoDto dto, String otp);
	public abstract boolean updatePassword(RtoDto dto, String password,String confirmPassword);
}
