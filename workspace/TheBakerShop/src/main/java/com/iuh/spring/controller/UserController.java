package com.iuh.spring.controller;

import java.util.List;
import java.util.Properties;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.iuh.spring.entity.Address;
import com.iuh.spring.entity.Order;
import com.iuh.spring.entity.User;
import com.iuh.spring.service.AddressService;
import com.iuh.spring.service.OrderService;
import com.iuh.spring.service.UserService;

import jakarta.mail.Authenticator;
import jakarta.mail.Message;
import jakarta.mail.Session;
import jakarta.mail.Transport;
import jakarta.mail.internet.InternetAddress;
import jakarta.mail.internet.MimeMessage;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@org.springframework.stereotype.Controller
@org.springframework.web.bind.annotation.RequestMapping("/user")
public class UserController {
	@Autowired
	private UserService userService;
	@Autowired
	private OrderService orderService;
	@Autowired
	private AddressService addressService;

	@GetMapping("/Slogin")
	public String showLogin(Model model, HttpSession session) {
		model.addAttribute("pageTitle", "Login");
		return "login/login";
	}

	@PostMapping("/login")
	public String login(@RequestParam("username") String username, @RequestParam("password") String password,
			HttpSession session, Model model) {
		User user = userService.getUserByEmailAndPassWord(username, password);
		if (user != null) {
			session.setAttribute("user", user);
			model.addAttribute("message", "Login successfully.");
			model.addAttribute("pageTitle", "account");
			return "redirect:/";
		} else {
			model.addAttribute("message", "Login failed. Please check your username and password.");
			return "login/login";
		}
	}

	@GetMapping("/account")
	public String showAccount(HttpSession session, Model model) {
		User user = (User) session.getAttribute("user");
		if (user != null) {
			model.addAttribute("pageTitle", "Account");
			session.setAttribute("user", user);
			return "/account/account";
		} else {
			return "redirect:/user/Slogin";
		}
	}

	@GetMapping("/accountOrderHistory")
	public String showAccountOrderHistory(HttpSession session, Model model) {
		User user = (User) session.getAttribute("user");
		List<Order> orders = orderService.getAllOrderByUserId(user.getUserId());
		model.addAttribute("orders", orders);
		session.setAttribute("user", user);
		model.addAttribute("pageTitle", "Account");
		return "account/account_order";
	}

	@GetMapping("/accountAddress")
	public String showAccountAddress(HttpSession session, Model model) {
		User user = (User) session.getAttribute("user");
		Address address = addressService.getAddressByUserId(user.getUserId());
		if (address == null) {
			address = new Address();
			address.setCity("");
			address.setDictrict("");
			address.setAddressInfo("");
			address.setUser(user);
			addressService.insertAddress(address);
		}
		model.addAttribute("address", address);
		session.setAttribute("user", user);
		model.addAttribute("pageTitle", "Account");
		return "account/account_address";
	}

	@GetMapping("/accountDetail")
	public String showAccountDetail(HttpSession session, Model model) {
		User user = (User) session.getAttribute("user");
		session.setAttribute("user", user);
		model.addAttribute("pageTitle", "Account");
		return "account/account_detail";
	}

	@GetMapping("/register")
	public String showRegister(Model model) {
		model.addAttribute("pageTitle", "Resgiter");
		return "login/register";
	}

//	${pageContext.request.contextPath}/user/registerUser
	@PostMapping("/registerUser")
	public String registerUser(Model model, HttpServletRequest request) {
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String confirmPass = request.getParameter("confirmPassword");
		String fname = request.getParameter("fname");
		String lname = request.getParameter("lname");
		String phone = request.getParameter("phone");
		if (email.trim().equalsIgnoreCase("") || password.trim().equalsIgnoreCase("")
				|| confirmPass.trim().equalsIgnoreCase("") || fname.trim().equalsIgnoreCase("")
				|| lname.trim().equalsIgnoreCase("") || phone.trim().equalsIgnoreCase("")) {
			model.addAttribute("email", email);
			model.addAttribute("fname", fname);
			model.addAttribute("lname", lname);
			model.addAttribute("phone", phone);
			model.addAttribute("message", "Vui lòng nhập đầy đủ thông tin");
			return "login/register";
		}
		if (phone.length() != 10) {
			model.addAttribute("email", email);
			model.addAttribute("fname", fname);
			model.addAttribute("lname", lname);
			model.addAttribute("message", "Số điện thoại phải có 10 số");
			return "login/register";
		}
		String regex = "0\\d{9}";
		if (!phone.matches(regex)) {
			model.addAttribute("email", email);
			model.addAttribute("fname", fname);
			model.addAttribute("lname", lname);
			model.addAttribute("message", "Số điện thoại không hợp lệ");
			return "login/register";
		}
		String regexMail = "^[a-zA-Z][a-zA-Z0-9_\\.]{5,32}@[a-zA-Z0-9]{2,}(\\.[a-zA-Z0-9]{2,4}){1,2}$";
		if (!email.matches(regexMail)) {
			model.addAttribute("fname", fname);
			model.addAttribute("lname", lname);
			model.addAttribute("phone", phone);
			model.addAttribute("message", "Email không hợp lệ");
			return "login/register";
		}
		if (userService.checkEmailExist(email)) {
			model.addAttribute("fname", fname);
			model.addAttribute("lname", lname);
			model.addAttribute("phone", phone);
			model.addAttribute("message", "Email đã tồn tại");
			return "login/register";
		}

		User user = new User();
		user.setEmail(email);
		user.setPassword(password);
		user.setFirstName(fname);
		user.setLastName(lname);
		user.setPhone(phone);
		user.setRole("user");
		userService.insertUser(user);
		model.addAttribute("message", "Đăng ký thành công");
		return "login/login";
	}

//	${pageContext.request.contextPath}/user/changepass
	@PostMapping("/changepass")
	public String ChangePass(Model model, HttpServletRequest request) {
		long userId = Long.parseLong(request.getParameter("userId"));
		String oldPass = request.getParameter("currentPassword");
		User user = userService.getUserById(userId);
		if (!user.getPassword().equals(oldPass)) {
			model.addAttribute("messageCurrent", "Mật khẩu không đúng");
			return "account/account_detail";
		}
		String newPass = request.getParameter("newPassword");
		String confirmPass = request.getParameter("confirmPassword");
		if (!newPass.equals(confirmPass)) {
			model.addAttribute("messageConfirm", "Mật khẩu không trùng khớp");
			return "account/account_detail";
		}
		user.setPassword(newPass);
		userService.updateUser(user);
		model.addAttribute("message", "Đổi mật khẩu thành công");
		return "account/account_detail";

	}

//	${pageContext.request.contextPath}/user/changeAddress
	@PostMapping("/changeAddress")
	public String ChangeAddress(Model model, HttpServletRequest request) {
		long userId = Long.parseLong(request.getParameter("userId"));
		User user = userService.getUserById(userId);
		String fname = request.getParameter("fname");
		String lname = request.getParameter("lname");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		user.setFirstName(fname);
		user.setLastName(lname);
		user.setEmail(email);
		user.setPhone(phone);

		String city = request.getParameter("city");
		String district = request.getParameter("dictrict");
		String address = request.getParameter("addressInfo");
		if (city.trim().equalsIgnoreCase("") || district.trim().equalsIgnoreCase("")
				|| address.trim().equalsIgnoreCase("")) {
			model.addAttribute("address", addressService.getAddressByUserId(userId));
			model.addAttribute("message", "Vui lòng nhập đầy đủ thông tin");
			return "account/account_address";
		}
		Address address2 = addressService.getAddressByUserId(userId);
		address2.setCity(city);
		address2.setDictrict(district);
		address2.setAddressInfo(address);
		addressService.updateAddress(address2);
		model.addAttribute("message", "Cập nhật địa chỉ thành công");
		return "redirect:/user/accountAddress";
	}

	@GetMapping("/logout")
	public String logout(HttpSession session) {
		session.removeAttribute("user");
		session.removeAttribute("cart");
		return "redirect:/";
	}

	public void sendMailRegister(String email,HttpServletRequest request, HttpServletResponse response, String messageToUser) {
		String from = "thaiphan09242002@gmail.com";
		String password = "etfdfvhcmaqkfgyc";
		String to = email;
		String subject = "Register";
		String text = "You have successfully registered for an account on our website";
		
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
			message.setSubject(subject);
			message.setText(text);
			Transport.send(message); // Gửi mail
			response.setContentType("text/html");
			response.getWriter().println("<h1>Mail sent successfully</h1>");
		} catch (Exception e) {
			e.printStackTrace();
		}


	}
}
