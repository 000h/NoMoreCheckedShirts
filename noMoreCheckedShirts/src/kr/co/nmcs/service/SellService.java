package kr.co.nmcs.service;

import java.util.List;

import kr.co.nmcs.dto.CheckoutDTO;
import kr.co.nmcs.dto.OrderDTO;

/**
 * 판매 상품 리스트 취득 인터페이스
 * */
public interface SellService {
	// CURD
	/**
	 * 장바구니 상품 목록을 가져와 리스트 객체로 가져온다.
	 * 
	 * @param acode : 장바구니를 조회할 회원 코드
	 * @return List&lt;CheckoutDTO&gt; 장바구니 상품 dto객체들을 저장한 리스트객체
	 * */
	public List<CheckoutDTO> readCheckoutList(int acode);

	/**
	 * 장바구니 상태인 주문값을 조회한다.
	 * 
	 * @param acode : 장바구니를 조회할 회원 코드
	 * @return 주문 코드
	 * */
	public int readCheckoutTcode(int acode);

	/**
	 * 새로운 장바구니를 생성한다.
	 * 
	 * @param acode : 장바구니를 소유할 회원 코드
	 * @return 추가된 행 개수
	 * */
	public int createCheckoutTran(int acode);

	/**
	 * 새로운 주문 상품을 추가한다.
	 * 
	 * @param odto : 주문 상품정보를 담은 DTO 객체
	 * @return 추가된 행 개수
	 * */
	public int createCheckoutItem(OrderDTO odto);

	/**
	 * 주문 상품을 제거한다.
	 * 
	 * @param ocode : 삭제할 주문 번호
	 * @return 삭제된 행 개수
	 * */
	public int deleteOrderItem(int ocode);
}
