package org.sbang.controller;

import java.util.Date;

import javax.inject.Inject;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.sbang.DTO.LoginDTO;
import org.sbang.domain.UserVO;
import org.sbang.service.UserService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.util.WebUtils;

@Controller
@RequestMapping("/login")
public class LoginController {

	private static final Logger logger = LoggerFactory.getLogger(LoginController.class);

	@Inject
	private UserService service;

	@RequestMapping(value = "/loginGet", method = RequestMethod.GET)
	public String loginGet() throws Exception {
		logger.info("loginGet.......");

		return "/user/login";
	}

	@RequestMapping(value = "/loginPost", method = RequestMethod.POST)
	public void loginPost(LoginDTO dto, Model model, HttpSession session, RedirectAttributes rttr) throws Exception {
		logger.info("loginPost......");
		UserVO vo = service.login(dto); // LoginDTO vo에 저장
		if (vo == null) {
			return;
		}
		model.addAttribute("userVO", vo); // model에 {userVO : vo} 저장
		if (dto.isUseCookie()) {
			int amount = 60 * 60 * 24 * 7;

			Date sessionLimit = new Date(System.currentTimeMillis() + (1000 * amount));

			service.keepLogin(vo.getUserEmail(), session.getId(), sessionLimit); // 세션ID, 세션시간 저장
		}

	}

	@RequestMapping(value = "/logout", method = RequestMethod.GET) // 로그아웃
	public String logout(HttpServletRequest request, HttpServletResponse response, HttpSession session) throws Exception {
		Object obj = session.getAttribute("login");
		logger.info("logoutGet.......");

		if (obj != null) {
			UserVO vo = (UserVO) obj;
			session.removeAttribute("login"); // 세션 제거
			session.invalidate();

			Cookie loginCookie = WebUtils.getCookie(request, "loginCookie");

			if (loginCookie != null) {
				loginCookie.setPath("/");
				loginCookie.setMaxAge(0);
				response.addCookie(loginCookie);
				service.keepLogin(vo.getUserEmail(), session.getId(), new Date());
			}
		}
		return "/login/logout";
	}

}