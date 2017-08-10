package kr.co.nmcs.control;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import kr.co.nmcs.dto.ProductInsertDTO;
import kr.co.nmcs.service.ProductInsertService;

@Controller
public class ProductInsertController {
	
	@Resource(name ="productInsert")
	ProductInsertService pis;

	public void setPis(ProductInsertService pis) {
		this.pis = pis;
	}
	
	@RequestMapping("NPinsert")
	public ModelAndView insertProduct(@ModelAttribute("dto")ProductInsertDTO dto) {
		pis.insertProduct(dto);
		
		return new ModelAndView("admin", "msg", "제품이 성공적으로 등록되었습니다");
	}
	
	@RequestMapping("NPinsertMain")
	public ModelAndView showType() {
		
		return new ModelAndView("productInsert", "type", pis.selectType());
	}
	
	
}
