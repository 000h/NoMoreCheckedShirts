package kr.co.nmcs.dao;

import java.util.List;

import kr.co.nmcs.dto.CheckoutDTO;
import kr.co.nmcs.dto.OrderDTO;

public interface SellDao {
	/**
	 * 장바구니 상품 목록을 가져와 리스트 객체로 만들어 반환한다.
	 * 
	 * @param acode : 장바구니를 조회할 회원 코드
	 * @return List&lt;CheckoutDTO&gt; 장바구니 상품 dto객체들을 저장한 리스트객체
	 * */
	public List<CheckoutDTO> selectCheckout(int acode);
	
	/**
	 * 장바구니 상태인 주문값을 조회하여 반환한다.
	 * 
	 * @param acode : 장바구니를 조회할 회원 코드
	 * @return 주문 코드
	 * */
	public int selectCheckoutTcode(int acode);
	
	/**
	 * 장바구니 상태인 신규 주문을 추가한다.
	 * 
	 * @param acode : 장바구니를 소유할 회원 코드
	 * @return 추가된 행 개수
	 * */
	public int insertCheckoutTran(int acode);
	
	/**
	 * 새로운 주문 상품을 추가한다.
	 * 
	 * @param odto : 주문 상품정보를 담은 DTO 객체
	 * @return 추가된 행 개수
	 * */
	public int insertCheckoutItem(OrderDTO odto);
	
	/**
	 * 주문 품목을 제거한다.
	 * 
	 * @param ocode : 삭제할 주문 번호
	 * @return 삭제된 행 개수
	 * */
	public int deleteOrderItem(int ocode);
}
