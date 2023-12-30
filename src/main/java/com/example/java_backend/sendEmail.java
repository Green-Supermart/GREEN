package com.example.java_backend;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import java.util.Properties;

public class sendEmail {
    public static void emailConfiguration(String recipientEmail, String subject, String messageBody) throws Exception {

        Properties properties = new Properties();
        properties.put("mail.smtp.host", "smtp.gmail.com");
        properties.put("mail.smtp.port", "587");
        properties.put("mail.smtp.auth", "true");
        properties.put("mail.smtp.starttls.enable", "true");

        Session session = Session.getInstance(properties, new Authenticator() {
            protected javax.mail.PasswordAuthentication getPasswordAuthentication() {
                return new javax.mail.PasswordAuthentication("greensupermartlk@gmail.com", "dcxjhsdondtodigl");
            }
        });

        try {
            Message message = new MimeMessage(session);
            message.setFrom(new InternetAddress("greensupermartlk@gmail.com"));
            message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(recipientEmail));
            message.setSubject(subject);
            message.setText(messageBody);

            Transport.send(message);
        }catch (Exception e) {
            e.printStackTrace();
            System.out.println("Email sending failed. Check the server logs for details.");
        }

    }
}
