package kr.co.nmcs.test;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class TestController {
	
	@Autowired
	private TestDao dao;

	public void setDao(TestDao dao) {
		this.dao = dao;
	}

	@RequestMapping("/test")
	public ModelAndView test() {
		List<TestDTO> list = dao.selectAll();
		System.out.println(list);
		return new ModelAndView("test", "list", list);
	}
}
