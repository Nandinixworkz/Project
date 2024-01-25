package com.xworkz.rto.repository;

import java.util.List;

import com.xworkz.rto.dto.LLDto;
import com.xworkz.rto.dto.RtoDto;
import com.xworkz.rto.entity.LLEntity;
import com.xworkz.rto.entity.RtoEntity;

public interface RtoRepository {

	public abstract boolean onSave(RtoDto dto);
	public abstract List<RtoEntity> findAll();
	public abstract RtoEntity checkLogin(String emailId, String otp);
	public abstract List<RtoEntity> findByState(String state);
	public abstract boolean save(LLDto dto);
	public abstract List<LLEntity> userByState(String state);
    public abstract LLEntity userLogin(String apporcontno, String dob);
    public abstract boolean updateById(int id);
    public abstract boolean updateOtpById(RtoDto dto);
    public abstract boolean updatePassword(RtoDto dto);
}
