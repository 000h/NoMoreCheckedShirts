package kr.co.nmcs.control;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
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
	@RequestMapping(value = "/NAcreate", method = RequestMethod.POST)
	public ModelAndView create(@ModelAttribute("dto") AccountDTO dto) {
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
	public ModelAndView readOne(@RequestParam("acode") int acode) {

		return new ModelAndView("updateForm", "readOne", as.readOne(acode));
	}

	// 4. 회원정보 수정
	@RequestMapping(value = "/NAupdate", method = RequestMethod.POST)
	public ModelAndView update(@ModelAttribute("dto") AccountDTO dto) {

		as.update(dto);

		return new ModelAndView("/admin", "msg", "성공적으로 수정하였습니다");
	}
	// 5. 회원정보 삭제

	@RequestMapping("/NAdeleteForm")
	public ModelAndView deleteForm() {

		return new ModelAndView("deleteForm", "read", as.accountAll());
	}

	@RequestMapping("/NAdelete")
	public ModelAndView delete(@RequestParam("acode") int acode) {

		as.delete(acode);

		return new ModelAndView("/admin", "msg", "성공적으로 삭제하였습니다");
	}
	//

	/* 지수 */

	@RequestMapping("/registerForm")
	public String registerForm() {

		return "register";
	}
	
	@RequestMapping("/register")
	public String register(@ModelAttribute("adto") AccountDTO adto) {
		System.out.println("adto :" + adto);
		
		as.register(adto);
		return "redirect:/registerOk";
	}
	
	@RequestMapping("/registerOk")
	public String registerOk() {
		return "registerOk";
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

	/* 로그인 */
	@RequestMapping("/login.html")
	public String login() {

		return "login";
	}

	@RequestMapping("/loginOk")
	public ModelAndView loginOk(HttpServletRequest req, HttpServletResponse resp,
			@ModelAttribute("adto") AccountDTO adto, HttpSession ss) {
		/*
		 * String id = req.getParameter("id"); String pw = req.getParameter("pw");
		 */

		// String dbid = adto.getId();
		// String dbpw = adto.getPw();

		/* 체크하는 부분 */

		// 아이디와 패스워드 저장
		String id = req.getParameter("id");
		String pw = req.getParameter("pw");
		/*
		 * String acode = req.getParameter("acode"); String name =
		 * req.getParameter("name");
		 */

		AccountDTO dto = as.login(id, pw);

		if (dto == null) {
			System.out.println("로그인실패");
			System.out.println(dto);
			ModelAndView mav = new ModelAndView();
			mav.addObject("id", id);
			mav.addObject("pw", pw);
			mav.addObject("dto", dto);
			mav.setViewName("login");
			return mav;
			
		} else {
			System.out.println("로그인 성공  id:" + dto.getId());
			System.out.println("로그인 성공  acode:" + dto.getAcode());
			System.out.println("로그인 성공  name:" + dto.getName());
			ss.setAttribute("id", dto.getId());
			ss.setAttribute("acode", dto.getAcode());
			ss.setAttribute("name", dto.getName());

			System.out.println("session creation time : " + ss.getCreationTime());
			System.out.println("session get Id : " + ss.getId());
			System.out.println("session attribute names : " + ss.getAttributeNames().toString());

			return new ModelAndView("index", "dto", dto);
		}

		//
		// // 세션 객체 생성
		// HttpSession session = req.getSession();
		//
		// // 페이지 이동 지정
		// RequestDispatcher dis = req.getRequestDispatcher("loginOk");
		//
		// // id가 db와 맞으면 세션에 저장
		// if (id.equals("dbid") && pw.equals("dbpw")) {
		// session.setAttribute("id", id);
		// /*
		// * session.setAttribute("acode", acode); session.setAttribute("name", name);
		// */
		// } else {
		// System.out.println("로그인되지 않았습니다");
		// }
		//

	}

	
	/* 로그아웃 */
	@RequestMapping("/logoutTestOk")
	public String logout(HttpServletRequest req, HttpServletResponse resp, @ModelAttribute("adto") AccountDTO adto,
			HttpSession ss) {

		/*
		 * System.out.println("session creation time : " + ss.getCreationTime());
		 * System.out.println("session get Id : " + ss.getId());
		 * System.out.println("session attribute names : " + ss.getAttributeNames());
		 */

		System.out.println("세션에 있는 모든 객체 삭제");

		// 세션에 저장된 객체 모두 없애기
		ss.invalidate();

		// 선택해서 없애기
		// ss.remove("key");

		/*
		 * System.out.println("session creation time : " + ss.getCreationTime());
		 * System.out.println("session get Id : " + ss.getId());
		 * System.out.println("session attribute names : " + ss.getAttributeNames());
		 */

		return "index";
	}
	
	
	
	
	

}
