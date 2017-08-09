package kr.co.nmcs.control;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import kr.co.nmcs.service.ProductListService;

@Controller
public class ProductsContorller {
	// 필드변수
	@Resource(name="productList")
	private ProductListService pls;
	
	// ---------- Mapping Methods ----------
	// 상품 전체 정보 view controller
	@RequestMapping(value="/products.html", params={"!taget", "!search"})
	public ModelAndView products() {
		ModelAndView mav = new ModelAndView();
		mav.addObject("setList", pls.readSetAll());
		mav.setViewName("products");
		
		return mav;
	} // products method end
	
	// 특정 키워드의 상품 정보 view controller
	@RequestMapping(value="/products.html", params={"!taget", "search"})
	public ModelAndView productSearch(@RequestParam("search") String search) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("setList", pls.readSetSearch(search));
		mav.setViewName("products");
		
		return mav;
	} // productSearch method end

	// 상품 상세정보 view controller
	@RequestMapping(value="/products.html", params="taget")
	public ModelAndView productDetail(@RequestParam("taget") int scode) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("info", pls.readOne(scode));
		mav.addObject("codiset", pls.readCodiset(scode));
		mav.setViewName("productDetail");
		return mav;
	} // productDetail method end
	// ---------- Mapping Methods end ----------

	// DI Setter
	public void setPls(ProductListService pls) {
		this.pls = pls;
	}
} // ProductsContorller class end
