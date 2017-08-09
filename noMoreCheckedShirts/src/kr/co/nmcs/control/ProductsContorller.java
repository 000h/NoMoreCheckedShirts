package kr.co.nmcs.control;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import kr.co.nmcs.service.ProductListService;

@Controller
public class ProductsContorller {
	@Resource(name="productList")
	private ProductListService pls;
	
	@RequestMapping("/products.html")
	public ModelAndView products(@RequestParam(name="taget", defaultValue="-1") int scode) {
		ModelAndView mav;
		
		if (scode < 0) {
			mav = productMain();
		} else {
			mav = productDetail(scode);
		}
		
		return mav;
	}
	
	// 전체 상품 목록 view controller
	public ModelAndView productMain() {
		ModelAndView mav = new ModelAndView();
		mav.addObject("setList", pls.readSetAll());
		mav.setViewName("products");
		
		return mav;
	}

	// 상품 상세정보 view controller
	public ModelAndView productDetail(int scode) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("info", pls.readOne(scode));
		mav.addObject("codiset", pls.readCodiset(scode));
		mav.setViewName("productDetail");
		return mav;
	}

	// DI Setter
	public void setPls(ProductListService pls) {
		this.pls = pls;
	}
}
