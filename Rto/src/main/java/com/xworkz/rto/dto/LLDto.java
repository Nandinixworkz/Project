package com.xworkz.rto.dto;

import javax.validation.constraints.Email;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Positive;
import javax.validation.constraints.Size;

import org.springframework.stereotype.Component;

import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@Component
public class LLDto {

	 private int id; 
	 
	  private String applicationRefNumber;
	 

	@Size(min = 3, max = 40, message = "please check your first name length, min=3 and max=30")
	@NotNull
	@NotBlank
	private String firstName;

	@Size(min = 3, max = 40, message = "please check your middle name length, min=3 and max=30")
	@NotNull
	@NotBlank
	private String middleName;

	@Size(min = 3, max = 40, message = "please check your last name length, min=3 and max=30")
	@NotNull
	@NotBlank
	private String lastName;

	
	private String gender;

	
	private String state;

	@Size(min = 3, max = 40, message = "please check your country length, min=3 and max=30")
	@NotNull
	@NotBlank
	private String country;

	@Size(min = 3, max = 40, message = "please check your Date of birth length, min=3 and max=30")
	@NotNull
	@NotBlank
	private String dob;

	private int age;

	private String bloodGroup;

	@Size(min = 3, max = 40, message = "please check your qualification length, min=3 and max=30")
	@NotNull
	@NotBlank
	private String qualification;

	@Size(min = 3, max = 40, message = "please check your place of birth length min=3 and max=30")
	@NotNull
	@NotBlank
	private String placeOfBirth;

	
	private String rtoOffice;

	@Positive(message="please check your pincode")
	private int pinCode;

	@Size(min = 3, max = 40, message = "please check your location length, min=3 and max=30")
	@NotNull
	@NotBlank
	private String location;

	@Email(message="please check your emailid")
	@NotNull
	@NotBlank
	private String emailId;

	@Positive(message="please check your contactNo")
	private Long contactNo;

	@Positive(message="please check your aadharNo")
	private Long aadharNo;

	@Size(min = 3, max = 40, message = "please check your present address length, min=3 and max=30")
	@NotNull
	@NotBlank
	private String permanentAddress;

	@Size(min = 3, max = 40, message = "please check your current address length, min=3 and max=30")
	@NotNull
	@NotBlank
	private String currentAddress;
	
	private String status;

}
