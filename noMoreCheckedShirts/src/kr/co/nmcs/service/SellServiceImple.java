package kr.co.nmcs.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import kr.co.nmcs.dao.SellDao;
import kr.co.nmcs.dto.CheckoutDTO;

@Service("sell")
public class SellServiceImple implements SellService {
	@Resource(name="SellDao")
	private SellDao dao;

	// ---------- Override Methods ----------
	/**
	 * 장바구니 상품 목록을 가져와 리스트 객체로 가져온다.
	 * 
	 * @param acode : 장바구니를 조회할 회원 코드
	 * @return List&lt;CheckoutDTO&gt; 장바구니 상품 dto객체들을 저장한 리스트객체
	 * */
	@Override
	public List<CheckoutDTO> readCheckoutList(int acode) {
		return dao.selectCheckout(acode);
	}
	// ---------- Override Methods end ----------

	// DI Setter
	public void setDao(SellDao dao) {
		this.dao = dao;
	}
	
}
