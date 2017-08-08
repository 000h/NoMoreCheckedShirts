package kr.co.nmcs.control;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import kr.co.nmcs.service.ProductListService;

@Controller
public class ProductsContorller {
	@Resource(name="productList")
	private ProductListService pls;
	
	@RequestMapping("/products.html")
	public ModelAndView main() {
		ModelAndView mav = new ModelAndView();
		mav.addObject("setList", pls.readSetAll());
		mav.setViewName("products");
		
		return mav;
	}

	// DI Setter
	public void setPls(ProductListService pls) {
		this.pls = pls;
	}
}
