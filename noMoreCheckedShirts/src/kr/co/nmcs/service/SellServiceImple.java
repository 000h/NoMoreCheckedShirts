package kr.co.nmcs.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import kr.co.nmcs.dao.SellDao;
import kr.co.nmcs.dto.CheckoutDTO;
import kr.co.nmcs.dto.OrderDTO;

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
	} // readCheckoutList method end
	
	/**
	 * 장바구니 상태인 주문값을 조회한다.
	 * 
	 * @param acode : 장바구니를 조회할 회원 코드
	 * @return 주문 코드
	 * */
	@Override
	public int readCheckoutTcode(int acode) {
		return dao.selectCheckoutTcode(acode);
	} // readCheckoutTcode method end
	
	/**
	 * 새로운 장바구니를 생성한다.
	 * 
	 * @param acode : 장바구니를 소유할 회원 코드
	 * @return 추가된 행 개수
	 * */
	@Override
	public int createCheckoutTran(int acode) {
		// TODO Auto-generated method stub
		return dao.insertCheckoutTran(acode);
	} // createCheckoutTran method end
	/**
	 * 새로운 주문 상품을 추가한다.
	 * 
	 * @param odto : 주문 상품정보를 담은 DTO 객체
	 * @return 추가된 행 개수
	 * */
	@Override
	public int createCheckoutItem(OrderDTO odto) {
		return dao.insertCheckoutItem(odto);
	} // createCheckoutItem method end
	// ---------- Override Methods end ----------

	// DI Setter
	public void setDao(SellDao dao) {
		this.dao = dao;
	}

}
