package kr.co.nmcs.control;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import kr.co.nmcs.dto.ProductSetInsertDTO;
import kr.co.nmcs.service.ProductSetInsertService;

@Controller
public class ProductSetInsertController {

	@Resource(name = "productSetInsert")
	ProductSetInsertService psis;

	public void setPsis(ProductSetInsertService psis) {
		this.psis = psis;
	}
	
	@RequestMapping("/NPSinsert")
	public ModelAndView insertSet(HttpServletRequest req) {
		
		String name = req.getParameter("name");
		int price = Integer.parseInt(req.getParameter("price"));
		String img = req.getParameter("img");
		String info = req.getParameter("info");
		
		ProductSetInsertDTO dto = new ProductSetInsertDTO();
		dto.setName(name);
		dto.setPrice(price);
		dto.setInfo(info);
		dto.setImg(img);
		
		psis.insertIntoProductInfo(dto);
		
		
		String[] p = req.getParameterValues("pcode"); 
		
		for(String pc : p) {
			int pcode = Integer.parseInt(pc);
			dto.setPcode(pcode);
			psis.insertIntoCodiSet(dto);
		}
		
		return new ModelAndView("/admin", "msg", "세트가 성공적으로 등록되었습니다");
	}
	

	
}
