package kr.co.nmcs.control;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import kr.co.nmcs.dto.CheckoutDTO;
import kr.co.nmcs.dto.OrderDTO;
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
		if (session.getAttribute("acode") != null) { // 로그인 상태일경우
			int acode = (int) session.getAttribute("acode"); // 세션에서 회원 코드 취득
			List<CheckoutDTO> list = ss.readCheckoutList(acode); // 장바구니 품목을 가져온다.
			
			// 장바구니 품목들 총합 가격 계산
			int total = 0;
			
			for (CheckoutDTO dto : list) {
				total+=dto.getPrice();
			} // for end
			
			mav.addObject("checkoutList", list); // 회원코드로 장바구니 상품목록을 가져와 모델뷰에 저장
			mav.addObject("total", total); // 장바구니 품목 가격 총합을  모델뷰에 저장
			mav.setViewName("sellCheckout"); // 장바구니 페이지로
		} else { // 로그인을 하지 않았을 경우
			mav = nonLogin(); // 로그인 페이지로
		} // end if
		
		return mav; // 모델뷰 객체 반환
	} // checkout method end
	
	// 장바구니에 상품 추가
	@RequestMapping(value="checkout", params="item")
	public ModelAndView addCheckout(
				 HttpSession session
				,@RequestParam("item") int scode
				,@RequestParam(name="ea", defaultValue="1") int ea
				,@RequestParam(name="price") int price
			) {
		ModelAndView mav = null; // 전달용 모델뷰 객체 생성
		
		// 세션값으로 로그인 여부를 판별하고 보여줄 VIEW를 결정한다.
		if (session.getAttribute("acode") != null) { // 로그인 상태일경우
			mav = new ModelAndView();
			int acode = (int) session.getAttribute("acode"); // 세션에서 회원 코드 취득
			// DB에 상품 데이터 추가.
			int tcode = ss.readCheckoutTcode(acode); // 빈 장바구니 코드를 가져옴
			// 빈 장바구니가 없다면 장바구니상태의 주문 생성
			if (tcode == -1) {
				ss.createCheckoutTran(acode); // 빈 장바구니 추가
				tcode = ss.readCheckoutTcode(acode); // 생성된 빈 장바구니 번호를 다시가져옴
			}
			
			OrderDTO odto = new OrderDTO(); // 주문 정보 DTO 객체 생성
			odto.setTcode(tcode);
			odto.setScode(scode);
			odto.setEa(ea);
			odto.setPrice(price);
			// 주문목록에 상품추가
			ss.createCheckoutItem(odto);
			
			// 장바구니 화면으로 전환.
			mav.setViewName("redirect:checkout.html"); // 장바구니 페이지로
		} else { // 로그인을 하지 않았을 경우
			mav = nonLogin(); // 로그인 페이지로
		} // end if
		
		return mav; // 모델뷰 객체 반환
	} // addCheckout method end
	
	// 장바구니 상품 제거
	@RequestMapping(value="removeCheckout", params="taget")
	public ModelAndView removeOrderItem(HttpSession session, @RequestParam("taget") int ocode) {
		ModelAndView mav = new ModelAndView(); // 전달용 모델뷰 객체 생성
		
		// 세션값으로 로그인 여부를 판별하고 보여줄 VIEW를 결정한다.
		if (session.getAttribute("acode") != null) { // 로그인 상태일경우
			ss.deleteOrderItem(ocode); // 해당 주문번호의 물품 삭제

			// 장바구니 화면으로 전환.
			mav.setViewName("redirect:checkout.html"); // 장바구니 페이지로
		} else { // 로그인을 하지 않았을 경우
			mav = nonLogin(); // 로그인 페이지로
		} // end if
		
		return mav; // 모델뷰 객체 반환
	} // checkout method end
	
	// 장바구니 상품 개수 추가
	
	// 결제 페이지
	@RequestMapping("order.html")
	public ModelAndView orderPage(HttpSession session) {
		ModelAndView mav = new ModelAndView(); // 전달용 모델뷰 객체 생성
		
		// 세션값으로 로그인 여부를 판별하고 보여줄 VIEW를 결정한다.
		if (session.getAttribute("acode") != null) { // 로그인 상태일경우
			int acode = (int) session.getAttribute("acode"); // 세션에서 회원 코드 취득
			List<CheckoutDTO> list = ss.readCheckoutList(acode); // 장바구니 품목을 가져온다.
			
			// 장바구니 품목들 총합 가격 계산
			int total = 0;
			
			for (CheckoutDTO dto : list) {
				total+=dto.getPrice();
			} // for end
			
			mav.addObject("checkoutList", list); // 회원코드로 장바구니 상품목록을 가져와 모델뷰에 저장
			mav.addObject("total", total); // 장바구니 품목 가격 총합을  모델뷰에 저장
			mav.setViewName("orderPayment"); // 결제 페이지로
		} else { // 로그인을 하지 않았을 경우
			mav = nonLogin(); // 로그인 페이지로
		} // end if
		
		return mav; //  모델뷰 객체 반환
	} // orderPage method end
	
	@RequestMapping("transaction.html")
	public ModelAndView transaction(
				 HttpSession session
				,@RequestParam("tcode") String tcode
				,@RequestParam("traname") String traname
				,@RequestParam("rehp") String rehp
				,@RequestParam("postcode") String postcode
				,@RequestParam("addr") String addr
			) {
		ModelAndView mav;
		
		// 세션값으로 로그인 여부를 판별하고 보여줄 VIEW를 결정한다.
		if (session.getAttribute("acode") != null) { // 로그인 상태일경우
			int acode = (int) session.getAttribute("acode"); // 세션에서 회원 코드 취득
			
			mav = new ModelAndView();
			mav.setViewName("productTrans"); // 결제 페이지로
		} else { // 로그인을 하지 않았을 경우
			mav = nonLogin(); // 로그인 페이지로
		} // end if
		return mav;
	}
	
	// 로그인 하지 않았을때 모델뷰 설정
	private ModelAndView nonLogin() {
		RedirectView rv = new RedirectView("login.html");
		rv.setExposeModelAttributes(false);
		ModelAndView mav = new ModelAndView(rv);
		mav.addObject("error", "로그인을 해주세요");
		
		return mav;
	}
	
	// DI Setter
	public void setSs(SellService ss) {
		this.ss = ss;
	}
	
} // SellController class end
