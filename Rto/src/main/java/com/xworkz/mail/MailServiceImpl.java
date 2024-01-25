package com.xworkz.mail;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.stereotype.Service;

@Service
public class MailServiceImpl implements MailService {

	@Autowired
	private MailConfig mailcon;

	@Override
	public boolean mailSend(String emailId, String otp) {
		SimpleMailMessage message = new SimpleMailMessage();
		message.setFrom("nandinisg.xworkz@gmail.com");
		message.setTo(emailId);
		message.setSubject("OTP for login");
		message.setText("Otp for your login :" +otp);
		mailcon.getJavaMailSender().send(message);
		System.out.println("mail send successfully");
		return true;
	}
	
	
}
