package com.xworkz.rto.dto;

import javax.validation.constraints.Email;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Positive;
import javax.validation.constraints.Size;

import org.springframework.stereotype.Component;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Component
public class RtoDto {
	
	
	 @Positive private int id;
	 
	@Size(min=3,max=40,message="please check your first name length, min=3 and max=30")
	@NotNull
	@NotBlank
	private String firstName;
	
	@Size(min=3,max=40,message="please check your last name length, min=3 and max=30")
	@NotNull
	@NotBlank
	private String lastName;
	
	@Size(min=3,max=40,message="check the user name length, min=3 and max=30")
	@NotNull
	@NotBlank
	private String dob;
	
	@Email
	@NotNull
	@NotBlank
	private String emailId;
	
	@Positive
	private Long phoneNo;
	
	@Size(min=3,max=40,message="please check the state length, min=3 and max=30")
	@NotNull
	@NotBlank
	private String state;
	
	@Size(min=3,max=40,message="please check the district length, min=3 and max=30")
	@NotNull
	@NotBlank
	private String district;
	
	@Size(min=3,max=40,message="please verify your password, min=3 and max=30")
	@NotNull
	@NotBlank
	private String password;
	
	@Size(min=3,max=40,message="please confirm the password length, min=3 and max=30")
	@NotNull
	@NotBlank
	private String confirmPassword;
	
	private String otp;

}
