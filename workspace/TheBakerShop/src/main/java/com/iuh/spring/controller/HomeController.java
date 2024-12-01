package com.iuh.spring.controller;

import java.util.List;
import java.util.Properties;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.iuh.spring.entity.Product;
import com.iuh.spring.entity.User;
import com.iuh.spring.service.CategoryService;
import com.iuh.spring.service.ProductService;

import jakarta.mail.Authenticator;
import jakarta.mail.Message;
import jakarta.mail.Session;
import jakarta.mail.Transport;
import jakarta.mail.internet.InternetAddress;
import jakarta.mail.internet.MimeMessage;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@Controller
public class HomeController {
	@Autowired
	private CategoryService categoryService;
	@Autowired
	private ProductService productService;

	@GetMapping("/")
	public String showHome(Model model, HttpSession session) {
		model.addAttribute("categories", categoryService.getAllCategory());
		List<Product> random = productService.getFeaturedProducts();
		model.addAttribute("randomP", random);
		return "home";
	}

//	
//	@GetMapping("/account")
//	public String showAccount(Model model) {
//		model.addAttribute("pageTitle", "Account");
//		return "account/account";
//	}
//	@GetMapping("/accountaddress")
//	public String showAccountAddress(Model model) {
//		model.addAttribute("pageTitle", "Account");
//		return "account/account_address";
//	}
//	@GetMapping("/accountdetail")
//	public String showAccountDetail(Model model) {
//		model.addAttribute("pageTitle", "Account");
//		return "account/account_detail";
//	}
//	@GetMapping("/accountorder2")
//	public String showOrderHitory(Model model) {
//		model.addAttribute("pageTitle", "Account");
//		return "account/account_order";
//	}
//	@GetMapping("/accountorder")
//	public String showAccountOrder(Model model) {
//		model.addAttribute("pageTitle", "Order");
//		return "cart/cart";
//	}
	@GetMapping("/contact")
	public String showAccountWishlist(Model model) {
		model.addAttribute("pageTitle", "Contact");
		return "contact/contact";
	}

	@PostMapping("/SendMail")
	public String sendMail(@RequestParam("email") String email, @RequestParam("message") String message,
			@RequestParam("lastName") String lname, @RequestParam("firstName") String fname, Model model) {
		model.addAttribute("pageTitle", "Contact");
		System.out.println("Email: " + email);
		System.out.println("Message: " + message);
		System.out.println("Name: " + fname + " " + lname);
		sendMailToCustomer(email);
		sendMailContact(email, message);
		return "redirect:/contact";
	}

	private void sendMailContact(String email, String question) {
		String from = "thaiphan09242002@gmail.com";
		String password = "etfdfvhcmaqkfgyc";
		String to = "phandinhthai012@gmail.com"; // mail của admin để lây thông tin phản hồi lại cho khách hàng
		String subject = "Liên hệ từ khách hàng";
		String messageToUser = "<h1>Email người gửi: " + email + "</h1><br/><h3>Câu hỏi: " + question+"</h3>";
		Properties props = System.getProperties();
		props.setProperty("mail.smtp.host", "smtp.gmail.com");
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.starttls.enable", "true");
		props.put("mail.smtp.host", "smtp.gmail.com");
		props.put("mail.smtp.ssl.trust", "smtp.gmail.com");
		props.put("mail.smtp.port", 587);
		String localhost = "localhost";
		Session session = Session.getDefaultInstance(props, new Authenticator() {
			protected jakarta.mail.PasswordAuthentication getPasswordAuthentication() {
				return new jakarta.mail.PasswordAuthentication(from, password);
			}
		});
		try {
			MimeMessage message = new MimeMessage(session); // Tạo đối tượng mặc định MimeMessage.
			message.setFrom(new InternetAddress(from));
			message.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
			message.setSubject(subject, "UTF-8");
			message.setSubject(subject);
			message.setContent(messageToUser, "text/html; charset=UTF-8");
			Transport.send(message); // Gửi mail
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	// phản hồi mail cho khách hàng khi họ liên hệ
	private void sendMailToCustomer(String email) {
		String from = "thaiphan09242002@gmail.com";
		String password = "etfdfvhcmaqkfgyc";
		String to = email;
		String subject = "Liên hệ từ khách hàng";
		String messageToCus = "<p>Cảm ơn bạn đã liên hệ với chúng tôi. Chúng tôi sẽ trả lời bạn trong thời gian sớm nhất </p>";
		Properties props = System.getProperties();
		props.setProperty("mail.smtp.host", "smtp.gmail.com");
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.starttls.enable", "true");
		props.put("mail.smtp.host", "smtp.gmail.com");
		props.put("mail.smtp.ssl.trust", "smtp.gmail.com");
		props.put("mail.smtp.port", 587);
		String localhost = "localhost";
		Session session = Session.getDefaultInstance(props, new Authenticator() {
			protected jakarta.mail.PasswordAuthentication getPasswordAuthentication() {
				return new jakarta.mail.PasswordAuthentication(from, password);
			}
		});
		try {
			MimeMessage message = new MimeMessage(session); // Tạo đối tượng mặc định MimeMessage.
			message.setFrom(new InternetAddress(from));
			message.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
			message.setSubject(subject, "UTF-8");
			message.setSubject(subject);
			message.setContent(messageToCus, "text/html; charset=UTF-8");
			Transport.send(message); // Gửi mail
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
