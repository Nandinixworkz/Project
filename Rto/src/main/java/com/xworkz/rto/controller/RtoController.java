package com.xworkz.rto.controller;

import java.util.List;
import java.util.Set;

import javax.validation.ConstraintViolation;

import org.apache.naming.ServiceRef;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.xworkz.mail.MailService;
import com.xworkz.rto.dto.LLDto;
import com.xworkz.rto.dto.RtoDto;
import com.xworkz.rto.service.RtoService;

@Controller
@RequestMapping("/")
public class RtoController {

	@Autowired
	RtoService service;
	
	@Autowired
	MailService mailService;

	public RtoController() {
		System.out.println("RtoController......");
	}

	@PostMapping("/save")
	public String onSave(@ModelAttribute RtoDto dto, Model model) {
		List<RtoDto> dto2 = service.findAll();
		for (RtoDto rtoDto : dto2) {
			if (rtoDto.getEmailId().equalsIgnoreCase(dto.getEmailId())) {
				model.addAttribute("errorMessage", "Email is already exists");
				return "SignUp";
			} else {
				model.addAttribute("dto", dto);
				Set<ConstraintViolation<RtoDto>> violation = service.onSave(dto);
				if (violation.isEmpty()) {
					model.addAttribute("message", "No violation... it is valid data");
					model.addAttribute("message", "Registered successfully...");
					return "SignUp";
				} else {
					model.addAttribute("violation", violation);
					return "SignUp";
				}
			}
		}
		return "SignUp";
	}

	@GetMapping("/findAll")
	public String findAll(Model model) {
		List<RtoDto> dto = service.findAll();
		if (dto != null) {
			model.addAttribute("dto", dto);
		}
		return "FindAll";
	}
	

	@GetMapping("/login")
	public String login(@RequestParam String emailId, @RequestParam String password, Model model) {
		RtoDto dto = service.checkLogin(emailId, password);
		List<LLDto>   dto1  =  service.userByState(dto.getState());
		if (dto != null) {
            model.addAttribute("dto",dto);    		
			model.addAttribute("dto1", dto1);
			return "Profile";
		} else {
			model.addAttribute("error", "Invalid email or password");
		}
			return "SignIn";
		
	}

	
	/*
	 * @GetMapping("/admin") public String admin(@RequestParam String
	 * emailId, @RequestParam String otp, Model model) {
	 * System.out.println(emailId+"" +otp); RtoDto rtoDto = null; List<RtoDto> dtos
	 * = service.findAll(); for (RtoDto rtoDto2 : dtos) {
	 * if(rtoDto2.getEmailId().equals(emailId)) { rtoDto = rtoDto2;
	 * model.addAttribute("emailId", emailId); } }
	 * 
	 //RtoDto dto = service.checkLogin(emailId, otp);
	  //System.out.println(dto);
	 * Integer randumNumber = (int) ((Math.random() * 90000 + 10000));
	 * mailService.mailSend(emailId, randumNumber.toString());
	 * System.out.println(otp+" "+otp);
	 * model.addAttribute("otp","send successfully"); //if (dto != null) {
	 * //model.addAttribute("d", dto); return "Admin"; } //else {
	 * //model.addAttribute("error", "Invalid email or password"); //return "Admin";
	 * // } //}
	 */
	
	@GetMapping("/admin")
	public String admin(@RequestParam String emailId, Model model) {
		RtoDto rtoDto = null;
		List<RtoDto> dtos  = service.findAll(); 
		for (RtoDto rtoDto2 : dtos) {
		  if(rtoDto2.getEmailId().equals(emailId)) { 
			  rtoDto = rtoDto2;
		  model.addAttribute("emailId", emailId); 
		  }
	}
		int randumNumber = (int) ((Math.random() * 90000) + 10000);
		boolean mail = mailService.mailSend(emailId, String.valueOf(randumNumber));
		System.err.println("my otp is" +String.valueOf(randumNumber));
		if(mail==true) {
			service.updateOtpById(rtoDto, String.valueOf(randumNumber));
			model.addAttribute("d", rtoDto);
			model.addAttribute("otp", "OTP sent");
			return "Admin";
		}else {
			model.addAttribute("exp", "invalid email or password");
			return "Admin";
		}
	}

	@GetMapping("/state")
	public String state(@RequestParam String state, Model model) {
		List<RtoDto> dto = service.findByState(state);
		if(dto!=null) {
			model.addAttribute("dto",dto);
			return "Profile";
		}else {
			model.addAttribute("errormsg", "State is ivalid");
			return "Profile";
		}
		
	}
	
	@PostMapping("/saveOn")
	public String save(@ModelAttribute LLDto dto, Model model) {
		System.out.println("dldto"+ dto);					
		Set<ConstraintViolation<LLDto>> violation =  service.save(dto);
		if(violation.isEmpty()) {
			model.addAttribute("TO", dto);
			model.addAttribute("message", "No violation it is valid data");
			model.addAttribute("app","applicationRefNumber is:" +dto.getApplicationRefNumber());
			return "Registration";
		}else {
			model.addAttribute("violation", violation);
			return "LLRegistration";
		}
	}

	@GetMapping("/userByState")
	public String userByState(@RequestParam String state, Model model) {
		List<LLDto> dto = service.userByState(state);
		if(dto!=null) {
			model.addAttribute("dto",dto);
			return "Profile";
		}else {
			model.addAttribute("errormsg", "State is ivalid");
			return "SignIn";
		}
		
	}
	
	  @GetMapping("/userLogin") 
	  public String userLogin(@RequestParam String apporcontno,@RequestParam String dob,Model model) { 
		  LLDto udto = service.userLogin(apporcontno,dob); 
	  if(udto!=null) { 
		  model.addAttribute("dto", udto);
		  return "userProfile";
	  }else {
		  model.addAttribute("msg", "Invalid emailId or Password");
		  return "Userlogin"; 
	  }
	  
	  }
	  
	  @GetMapping("/updateUserStatus")
	  public String updateStatus(@RequestParam int id,Model model) {
		  boolean update = service.updateById(id);
		  if(update==true) {
			  model.addAttribute("updatemsg", "updated successfully");
			  model.addAttribute("u", update);
			  return "Profile";
		  }
		  else {
			  model.addAttribute("updatemsg", "not updated");
			  return "Profile";
		  }
	  }
	  
	  @GetMapping("/checkotp")
	  public String otpLogin(@RequestParam String emailId, @RequestParam String otp, Model model) {
	  RtoDto dto =  service.checkLogin(emailId, otp);
		//if(dto.getEmailId().equals(emailId) && dto.getOtp().equals(otp)) {
			model.addAttribute("dto",dto);
			return "AdminProfile";
		
		//return "AdminProfile";
	  }
	  
	  @GetMapping("/forgot")
	  public String forgotPassword(@RequestParam String emailId, @RequestParam String otp, Model model) {
		  RtoDto dto = service.checkLogin(emailId, otp);
		  System.out.println("dto" +dto);
		  if(dto!=null) {
			  model.addAttribute("d",dto);
			  return "UpdatePassword";
		  }else {
			  model.addAttribute("errormessage","otp is inavlid");
			  return "ForgotPassword";
		  }
		  
	  }
	  
	  @GetMapping("/password")
	  public String password(@RequestParam String emailId,Model model) {
		RtoDto dto1 = null;
		List<RtoDto> rdto =	service.findAll();
		  for (RtoDto dtos : rdto) {
			System.out.println("dtos" +dtos);
			if(dtos.getEmailId().equals(emailId)) {
				dto1=dtos;
			}
		}
		  Integer randomNumber = (int) ((Math.random() * 90000) + 10000);
			boolean mail = mailService.mailSend(emailId, randomNumber.toString());
			System.err.println("my otp is" +randomNumber.toString());
			if(mail==true) {
				service.updateOtpById(dto1, randomNumber.toString());
				model.addAttribute("otp1", "sent successfully");
				model.addAttribute("d", dto1);
				return "Password";	
			}else {
					model.addAttribute("error","invalid email");
					return "Password";
				}
	  }
	  
	  @GetMapping("/updatePassword")
	  public String updatePassword(@RequestParam String emailId, @RequestParam String password, @RequestParam String confirmPassword, Model model) {
		RtoDto dto1=null;
		System.out.println("password" +password);
		System.out.println("confirmPassword" +confirmPassword);
		List<RtoDto> rdto = service.findAll();
		for (RtoDto dtos : rdto) {
			if(dtos.getEmailId().equals(emailId)) {
				dto1=dtos;
			}
			System.out.println("dtos" +dtos);
		}
		if(password!=null&&confirmPassword!=null) {
			service.updatePassword(dto1, password, confirmPassword);
			model.addAttribute("up", "password updated successfully");
			return "SignIn";
		}else {
			model.addAttribute("msg", "password and confirmpassword are null");
			return "updatePassword";
		}
	  }
}

