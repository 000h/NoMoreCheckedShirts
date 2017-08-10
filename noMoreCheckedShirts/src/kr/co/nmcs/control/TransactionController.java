package kr.co.nmcs.control;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import kr.co.nmcs.service.TransactionService;

@Controller
public class TransactionController {

	@Resource(name = "transactionService")
	TransactionService tra;

	public void setTra(TransactionService tra) {
		this.tra = tra;
	}
	
	
	// tcode, id, tradate, trastatus 조회 method
	@RequestMapping("/NTreadAll")
	public ModelAndView readAll() {
		
		return new ModelAndView("traReadAll", "read", tra.readAll());
	}
	
	@RequestMapping("/NTreadRev")
	public ModelAndView readRev(
			@RequestParam("tcode")int tcode
			) {
		
		return new ModelAndView("traRev", "readRev", tra.readRev(tcode) );
	}
	
	@RequestMapping("/NTreadAccount")
	public ModelAndView readAccount(@RequestParam("id")String id) {
		
		return new ModelAndView("traAccount", "readAccount", tra.readAccount(id));
	}
	
	@RequestMapping("/NTreadInfo")
	public ModelAndView readInfo(@RequestParam("tcode")int tcode) {
		
		return new ModelAndView("traInfo", "readInfo", tra.readInfo(tcode));
	}
	
}
