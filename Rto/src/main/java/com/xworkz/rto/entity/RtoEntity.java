package com.xworkz.rto.entity;

import java.time.LocalDateTime;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;

import lombok.Data;

@Entity
@Data
@Table(name="rto_details")
@NamedQueries({@NamedQuery(name="findAll" , query="select en from RtoEntity en"),
@NamedQuery(name="logins", query="select en from RtoEntity en where en.emailId=:id and en.otp=:otp"),
@NamedQuery(name="findByState", query="select en from RtoEntity en where en.state=:state")})
public class RtoEntity {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String firstName;
	private String lastName;
	private String dob;
	private String emailId;
	private Long phoneNo;
	private String state;
	private String district;
	private String password;
	private String confirmPassword;
	private LocalDateTime createdOn;
	private String otp;
}
