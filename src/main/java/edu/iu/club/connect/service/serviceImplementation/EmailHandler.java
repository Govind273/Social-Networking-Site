package edu.iu.club.connect.service.serviceImplementation;

import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import java.util.Properties;

import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import org.springframework.mail.MailException;

import org.springframework.stereotype.Service;


@Service
public class EmailHandler {


	public static String sendEmail(String emailID, String oldPassword) throws Exception {
		System.out.println("Entered ForgetPassword");
		if(oldPassword != null){
			String host = "smtp.gmail.com";
			final String username = "socialnetworkiu@gmail.com";
			final String password = "Se5652016";
			System.out.println("EmailHandler"+oldPassword);

			Properties props = new Properties();
//			props.put("mail.smtp.auth", "true");
			props.put("mail.smtp.starttls.enable", "true");
//			props.put("mail.smtp.user", username);
//	        props.put("mail.smtp.password", password);
//			props.put("mail.smtp.host", host);
			props.put("mail.smtp.port", "587");
			
			props.put("mail.smtp.host", "smtp.gmail.com");
			props.put("mail.smtp.socketFactory.port", "465");
			props.put("mail.smtp.socketFactory.class",
					"javax.net.ssl.SSLSocketFactory");
			props.put("mail.smtp.auth", "true");
			props.put("mail.smtp.port", "465");

			Session session = Session.getInstance(props, new GMailAuthenticator(username, password));

			try {

				MimeMessage message = new MimeMessage(session);
				message.setFrom(new InternetAddress("from-email@gmail.com"));
				message.setRecipients( Message.RecipientType.TO, InternetAddress.parse(emailID));
				message.setSubject("Your old password!");
				message.setText("Dear " + emailID + ",\n\n\n Your password is: " + oldPassword);

				Transport transport = session.getTransport("smtp");
		        transport.connect(host, username, password);
		        message.saveChanges();
				Transport.send(message);

				System.out.println("Email Done");
				return "true";
			} catch (MailException e) {
				throw new RuntimeException(e);
			}
		}
		else {
			System.out.println("Email not Sent");
			return "false";
		}
	}

}
