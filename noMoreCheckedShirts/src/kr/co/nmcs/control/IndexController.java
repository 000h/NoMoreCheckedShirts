package kr.co.nmcs.control;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import kr.co.nmcs.service.ProductListService;

@Controller
public class IndexController {
	@Resource(name="productList")
	private ProductListService pls;
	
	@RequestMapping(value = { "/index.html", "/" })
	public ModelAndView viewIndexPage() {
		ModelAndView mav = new ModelAndView(); // 모델객체를 생성한다.
		mav.addObject("set10", pls.readSet10()); // 세트 상품 정보 10개를 담는다.
		mav.addObject("list", pls.readTop8()); // 최상위 8개 상품정보를 담는다.
		mav.setViewName("index"); // view는 index
		
		return mav;
	}

	// DI Setter
	public void setPls(ProductListService pls) {
		this.pls = pls;
	}
}
