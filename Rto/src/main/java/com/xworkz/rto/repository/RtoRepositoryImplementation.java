package com.xworkz.rto.repository;

import java.time.LocalDateTime;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.NoResultException;
import javax.persistence.Query;

import org.apache.taglibs.standard.lang.jstl.test.beans.Factory;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.xworkz.rto.dto.LLDto;
import com.xworkz.rto.dto.RtoDto;
import com.xworkz.rto.entity.LLEntity;
import com.xworkz.rto.entity.RtoEntity;

import lombok.extern.java.Log;

@Repository
public class RtoRepositoryImplementation implements RtoRepository {

	@Autowired
	EntityManagerFactory Factory;

	@Override
	public boolean onSave(RtoDto dto) {
		System.out.println("onsave method statred.....");
		System.out.println(dto);
		RtoEntity entity = new RtoEntity();
		BeanUtils.copyProperties(dto, entity);
		System.out.println(entity);
		entity.setCreatedOn(LocalDateTime.now());
		EntityManager manager = Factory.createEntityManager();
		manager.getTransaction().begin();
		manager.persist(entity);
		manager.getTransaction().commit();
		manager.close();
		return true;
	}

	@Override
	public List<RtoEntity> findAll() {
		System.out.println("findAll method started..");
		EntityManager manager = Factory.createEntityManager();
		Query query = manager.createNamedQuery("findAll");
		List<RtoEntity> list = query.getResultList();
		System.out.println(list);
		return list;
	}

	@Override
	public RtoEntity checkLogin(String emailId,String otp) {
		System.out.println("find by emailId method started in repo...");
		EntityManager manager = Factory.createEntityManager();
	    Query query = manager.createNamedQuery("logins");
	    query.setParameter("id",emailId);
	    //query.setParameter("password",password);
	    query.setParameter("otp", otp);
	    try {
	    return (RtoEntity) query.getSingleResult();
	    }catch(NoResultException e) {
	    	return null;
	    }
	}

	@Override
	public List<RtoEntity> findByState(String state) {
		EntityManager manager = Factory.createEntityManager();
		Query query = manager.createNamedQuery("findByState");
		query.setParameter("state",state);
		List<RtoEntity> list = query.getResultList();
		      return list;
	}

	@Override
	public boolean save(LLDto dto) {
	System.out.println(dto);
	LLEntity entity = new LLEntity();
	BeanUtils.copyProperties(dto, entity);
	entity.setCreatedOn(LocalDateTime.now());
	entity.setStatus("pending");
	EntityManager manager = Factory.createEntityManager();
	manager.getTransaction().begin();
	manager.persist(entity);
	manager.getTransaction().commit();
	manager.close();
		return true;
	}



	  @Override 
	  public LLEntity userLogin(String apporcontno, String dob) {
	  EntityManager manager = Factory.createEntityManager(); 
	  Query loginQuery = manager.createNamedQuery("userLogin"); 
	  loginQuery.setParameter("applNoOrConNo", apporcontno);
	  loginQuery.setParameter("db", dob); 
	  try { 
		  return (LLEntity)loginQuery.getSingleResult(); 
		  }catch(NoResultException e) 
	  { return null;
	  }
	  }

	@Override
	public boolean updateById(int id) {
		 EntityManager manager = Factory.createEntityManager();
		 LLEntity entity = manager.find(LLEntity.class, id);
		 if(entity!=null) {
			 entity.setStatus("approved");
			 manager.getTransaction().begin();
			 manager.merge(entity);
			 manager.getTransaction().commit();
			 manager.close();
		return false;
		 }else {
			 System.out.println("Invalid id");
		 }
		 return false;
	}

	@Override
	public List<LLEntity> userByState(String state) {
		EntityManager manager = Factory.createEntityManager();
		Query query = manager.createNamedQuery("userByState");
		query.setParameter("state", state);
		List<LLEntity> list1 = query.getResultList();
		      return list1;
		}

	@Override
	public boolean updateOtpById(RtoDto dto) {
		EntityManager manager = Factory.createEntityManager();
	     RtoEntity entity = new RtoEntity();
	     BeanUtils.copyProperties(dto, entity);
	     manager.getTransaction().begin();
	     manager.merge(entity);
	     manager.getTransaction().commit();
	     manager.close();
		return true;
	}

	@Override
	public boolean updatePassword(RtoDto dto) {
		EntityManager manager = Factory.createEntityManager();
		RtoEntity en = new RtoEntity();
	    BeanUtils.copyProperties(dto, en);
	    en.setPassword(dto.getPassword());
	    en.setConfirmPassword(dto.getConfirmPassword());
	    en.setCreatedOn(LocalDateTime.now());
	    manager.getTransaction().begin();
	     manager.merge(en);
	     manager.getTransaction().commit();
	     manager.close();
		return true;
	}
}
