package kr.co.nmcs.control;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import kr.co.nmcs.dto.AccountDTO;
import kr.co.nmcs.service.AccountService;

@Controller
public class AccountController {

	@Resource(name = "accountService")
	AccountService as;

	public void setAs(AccountService as) {
		this.as = as;
	}
	// 동희 작업 
	// main으로 복귀
	@RequestMapping("/admin")
	public String main() {
		
		return "/admin";
	}
	
	// 1. 관리자 계정 생성
	@RequestMapping("/NAcreateForm")
	public String createForm() {
		
		return "createForm";
	}
	
	// post방식으로 처리
	@RequestMapping(value="/NAcreate", method= RequestMethod.POST)
	public ModelAndView create(@ModelAttribute("dto")AccountDTO dto) {
		as.create(dto);

		return new ModelAndView("admin", "msg", "성공적으로 등록되었습니다");
	}
	
	// 2. 회원정보 전체 조회
	@RequestMapping("/NAreadAll")
	public ModelAndView readAll() {
		
		return new ModelAndView("readAll", "read", as.accountAll());
	}
	
	// 3. 회원정보 한 건 조회
	@RequestMapping("/NAreadOne")
	public ModelAndView readOne(
			@RequestParam("acode")int acode
			) {
		
		return new ModelAndView("updateForm", "readOne", as.readOne(acode));
	}
	
	// 4. 회원정보 수정
	@RequestMapping(value="/NAupdate",method=RequestMethod.POST)
	public ModelAndView update(@ModelAttribute("dto")AccountDTO dto) {
		
		as.update(dto);
		
		return new ModelAndView("/admin", "msg", "성공적으로 수정하였습니다");
	}
	// 5. 회원정보 삭제
	
	@RequestMapping("/NAdeleteForm")
	public ModelAndView deleteForm() {
		
		return new ModelAndView("deleteForm", "read", as.accountAll());
	}
	@RequestMapping("/NAdelete")
	public ModelAndView delete(
			@RequestParam("acode")int acode
			) {
			
		as.delete(acode);
		
		return new ModelAndView("/admin", "msg", "성공적으로 삭제하였습니다");
	}
	//
	
	
	
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
