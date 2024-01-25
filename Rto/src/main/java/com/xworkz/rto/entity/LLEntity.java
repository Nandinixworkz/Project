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

@Data
@Entity
@Table(name="dl_details1")
@NamedQueries({@NamedQuery(name="userByState", query="select en from LLEntity en where en.state=:state"),
@NamedQuery(name="userLogin", query="select en from LLEntity en where (en.applicationRefNumber=:applNoOrConNo OR en.contactNo=:applNoOrConNo) AND en.dob=:db")})
public class LLEntity {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	private String applicationRefNumber;

	private String firstName;
	
	private String middleName;
	
	private String lastName;
	
	private String gender;
	
	private String state;
	
	private String country;
	
	private String dob;
	
	private int age;
	
	private String bloodGroup;
	
	private String qualification;
	
	private String placeOfBirth;
	
	private String rtoOffice;
	
	private int pinCode;
	
	private String location;
	
	private String emailId;
	
	private Long contactNo;
	
	private Long aadharNo;
	
	private String permanentAddress;
	
	private String currentAddress;

	private LocalDateTime createdOn;
	
	private String status;

}
