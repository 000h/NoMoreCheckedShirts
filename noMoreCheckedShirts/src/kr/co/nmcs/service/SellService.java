package kr.co.nmcs.service;

import java.util.List;

import kr.co.nmcs.dto.CheckoutDTO;

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
}
