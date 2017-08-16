package kr.co.nmcs.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.nmcs.dto.CheckoutDTO;
import kr.co.nmcs.dto.OrderDTO;

@Repository("SellDao")
public class SellDaoImple implements SellDao {
	// 필드 변수
	@Autowired
	private SqlSession ss; // mybatis DB 연결 세션 객체

	// ---------- Override Methods ----------
	/**
	 * 장바구니 상품 목록을 가져와 리스트 객체로 만들어 반환한다.
	 * 
	 * @param acode : 장바구니를 조회할 회원 코드
	 * @return List&lt;CheckoutDTO&gt; 장바구니 상품 dto객체들을 저장한 리스트객체
	 * */
	@Override
	public List<CheckoutDTO> selectCheckout(int acode) {
		return ss.selectList("kr.co.nmcs.sell.selectCheckout", acode); // 쿼리 실행
	} // selectCheckout method end
	
	/**
	 * 장바구니 상태인 주문값을 조회하여 반환한다.
	 * 
	 * @param acode : 장바구니를 조회할 회원 코드
	 * @return 주문 코드
	 * */
	@Override
	public int selectCheckoutTcode(int acode) {
		Object obj = ss.selectOne("kr.co.nmcs.sell.selectCheckoutTcode", acode);
		if (obj != null) {
			return (Integer) obj;
		} else {
			return -1; // 쿼리 실행			
		}
		
	} // selectCheckoutTcode method end
	
	/**
	 * 장바구니 상태인 신규 주문을 추가한다.
	 * 
	 * @param acode : 장바구니를 소유할 회원 코드
	 * @return 추가된 행 개수
	 * */
	@Override
	public int insertCheckoutTran(int acode) {
		return ss.insert("insertCheckoutTran", acode);
	} // insertCheckoutTran method end
	
	/**
	 * 새로운 주문 상품을 추가한다.
	 * 
	 * @param odto : 주문 상품정보를 담은 DTO 객체
	 * @return 추가된 행 개수
	 * */
	@Override
	public int insertCheckoutItem(OrderDTO odto) {
		return ss.insert("addCheckout", odto);
	} // insertCheckoutItem method end
	
	/**
	 * 주문 품목을 제거한다.
	 * 
	 * @param ocode : 삭제할 주문 번호
	 * @return 삭제된 행 개수
	 * */
	@Override
	public int deleteOrderItem(int ocode) {
		return ss.delete("deleteOrder", ocode);
	} // deleteOrderItem method end
	// ---------- Override Methods end----------

	// DI Setter
	public void setSs(SqlSession ss) {
		this.ss = ss;
	}

}
