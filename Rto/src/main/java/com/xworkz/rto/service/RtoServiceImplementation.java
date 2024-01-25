package com.xworkz.rto.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Set;

import javax.validation.ConstraintViolation;
import javax.validation.Validation;
import javax.validation.Validator;
import javax.validation.ValidatorFactory;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.xworkz.rto.dto.LLDto;
import com.xworkz.rto.dto.RtoDto;
import com.xworkz.rto.entity.LLEntity;
import com.xworkz.rto.entity.RtoEntity;
import com.xworkz.rto.repository.RtoRepository;

@Service
public class RtoServiceImplementation implements RtoService {

	@Autowired
	RtoRepository repo;

	public RtoServiceImplementation() {
		System.out.println("RtoServiceImplementation started....");
	}

	@Override
	public Set<ConstraintViolation<RtoDto>> onSave(RtoDto dto) {
		ValidatorFactory factory = Validation.buildDefaultValidatorFactory();
		Validator valid = factory.getValidator();

		Set<ConstraintViolation<RtoDto>> violations = valid.validate(dto);
		if (violations.isEmpty()) {

			repo.onSave(dto);
			System.out.println("data is saved successfully");
		} else {
			System.out.println("data is saved Unsuccessfully");
			return violations;
		}
		return violations;
	}

	@Override
	public List<RtoDto> findAll() {
		System.out.println("findAll method start in repo");
		List<RtoEntity> entityList = repo.findAll();
		List<RtoDto> dtoList = new ArrayList<RtoDto>();
		for (RtoEntity en : entityList) {
			System.out.println(en);
			RtoDto dto = new RtoDto();
			BeanUtils.copyProperties(en, dto);
			dtoList.add(dto);
			System.out.println(dto);
		}
		System.out.println(dtoList.toString());
		return dtoList;
	}

	@Override
	public RtoDto checkLogin(String emailId, String otp) {
		RtoEntity entity = repo.checkLogin(emailId, otp);
		if (emailId != null && otp != null & otp.length() >= 9) {
			if (entity != null) {
				RtoDto dto = new RtoDto();
				BeanUtils.copyProperties(entity, dto);
				if (dto.getEmailId().equals(emailId) && dto.getOtp().equals(otp)) {
					return dto;
				} else {
					System.out.println("Invalid email and otp");
					return null;
				}
			} else {
				System.out.println("Entity is null");
				return null;
			}
		} else {
			System.out.println("email or otp is null");
			return null;
		}

	}

	@Override
	public List<RtoDto> findByState(String state) {
		List<RtoEntity> entityList = repo.findByState(state);
		List<RtoDto> dtoList = new ArrayList<RtoDto>();
		for (RtoEntity en : entityList) {
			RtoDto dto = new RtoDto();
			BeanUtils.copyProperties(en, dto);
			if (dto.getState().equalsIgnoreCase(state)) {
				dtoList.add(dto);
			} else {
				System.out.println("state is invalid");
			}
		}
		System.out.println("dtoList" + dtoList);
		return dtoList;
	}

	@Override
	public Set<ConstraintViolation<LLDto>> save(LLDto dto) {

		 String code = null; 
		 int randomNumber = (int) ((Math.random() * 800)); 
		 String otp = String.valueOf(randomNumber); 
		 if (dto.getState().equals("Karnataka")) 
		 {
		  code = "KA2023LLR" + otp; 
		  }
		 dto.setApplicationRefNumber(code);

		ValidatorFactory factory = Validation.buildDefaultValidatorFactory();
		Validator valid = factory.getValidator();

		Set<ConstraintViolation<LLDto>> violations = valid.validate(dto);
		if (violations.isEmpty()) {

			repo.save(dto);
			System.out.println("data is saved successfully");
		} else {
			System.out.println("data is saved Unsuccessfully");
			return violations;
		}
		return violations;
	}

	  @Override 
	  public LLDto userLogin(String apporcontno, String dob) {
	  if(apporcontno!=null && dob!=null) { 
		  LLEntity uentity = repo.userLogin(apporcontno,dob);
		  if(uentity!=null) { 
			  LLDto udto = new LLDto();
	  BeanUtils.copyProperties(uentity, udto);
	  if(udto.getApplicationRefNumber().equals(apporcontno)&&udto.getDob().equals(dob)) {
		  return udto; 
		  }else { 
			  System.out.println("Invalid login credentials");
	  return null; 
	  }
	  }
		  }
	  return null;
	  
	  }
	  
		@Override
		public List<LLDto> userByState(String state) {
			List<LLEntity> entityList = repo.userByState(state);
			List<LLDto> dtoList = new ArrayList<LLDto>();
			for (LLEntity e : entityList) {
				LLDto dto = new LLDto();
				BeanUtils.copyProperties(e, dto);
				if (dto.getState().equalsIgnoreCase(state)) {
					dtoList.add(dto);
				} else {
					System.out.println("state is invalid");
				}
			}
			System.out.println("dtoList" + dtoList);
			return dtoList;
		}

	@Override
	public boolean updateById(int id) {
       repo.updateById(id);
		return true;
	}

	@Override
	public boolean updateOtpById(RtoDto dto, String otp) {
		dto.setOtp(otp);
     boolean updateotpById = repo.updateOtpById(dto);
		return updateotpById;
	}

	@Override
	public boolean updatePassword(RtoDto dto, String password, String confirmPassword) {
		dto.setPassword(password);
		dto.setConfirmPassword(confirmPassword);
		boolean updatepassword = repo.updatePassword(dto);
		return updatepassword;
	}

	
}
