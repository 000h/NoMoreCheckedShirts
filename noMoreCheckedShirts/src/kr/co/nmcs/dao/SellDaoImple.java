package kr.co.nmcs.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.nmcs.dto.CheckoutDTO;

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
		return ss.selectList("kr.co.nmcs.sell.selectCheckout", acode);
	} // selectCheckout method end
	// ---------- Override Methods end----------

	// DI Setter
	public void setSs(SqlSession ss) {
		this.ss = ss;
	}

}
