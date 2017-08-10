package kr.co.nmcs.control;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import kr.co.nmcs.service.SellService;

// 상품 판매 관련 컨터롤러 클래스
@Controller
public class SellController {

	// 필드변수
	@Resource(name="sell")
	private SellService ss;
	
	// 장바구니 View
	@RequestMapping("checkout.html")
	public ModelAndView checkout(HttpSession session) {
		ModelAndView mav = new ModelAndView(); // 전달용 모델뷰 객체 생성
		
		// 세션값으로 로그인 여부를 판별하고 보여줄 VIEW를 결정한다.
		if (session.getAttribute("acode") != null) {
			int acode = (int) session.getAttribute("acode"); // 세션에서 회원 코드 취득
			mav.addObject("checkoutList", ss.readCheckoutList(acode)); // 회원코드로 장바구니 상품목록을 가져와 모델뷰에 저장
			mav.setViewName("sellCheckout"); // 장바구니 페이지로
		} else {
			mav.addObject("error", "로그인을 해주세요");
			mav.setViewName("redirect:/login.html"); // 장바구니 페이지로
		} // end if
		
		return mav; // 모델뷰 객체 반환
	} // checkout method end
	
	// 장바구니 상품 제거
	
	// 장바구니 상품 개수 추가

	// DI Setter
	public void setSs(SellService ss) {
		this.ss = ss;
	}
	
} // SellController class end
