package edu.iu.club.connect.service.serviceImplementation;

import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import java.util.Properties;

import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.mail.MailException;

import org.springframework.stereotype.Service;
import org.springframework.test.context.junit4.SpringRunner;

import static org.junit.Assert.assertNotNull;

@RunWith(SpringRunner.class)
@SpringBootTest
public class EmailHandlerTest {

	@Autowired
	private EmailHandler emailHandler;
	
	@SuppressWarnings("static-access")
	@Test
	public void sendEmail_OK() throws Exception{
		
		assertNotNull(emailHandler.sendEmail("kumasuje@iu.edu", "non"));
	}


}
