package kr.co.nmcs.control;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import kr.co.nmcs.service.AccountService;

@Controller
public class AccountController {

	@Resource(name = "accountService")
	AccountService as;

	public void setAs(AccountService as) {
		this.as = as;
	}

	@RequestMapping("/register")
	public void register() {

	}

	@RequestMapping("/modifyAccount")
	public void modifyAccount() {

	}

	@RequestMapping("/withdrawal")
	public void withdrawal() {

	}

	@RequestMapping(value = "regForm", method = RequestMethod.GET) // 나중에 POST 방식으로 바꿀 예정
	public String regForm() {
		return "regForm";
	}
	
	
	/* 회원 전체 목록 출력 */
	@RequestMapping("/accountList")
	public ModelAndView alist() {
		ModelAndView mav = new ModelAndView();
		mav.addObject("accountList", as.accountAll());
		mav.setViewName("accountList");
		return mav;
	}

}
