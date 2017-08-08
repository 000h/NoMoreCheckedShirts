package kr.co.nmcs.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.nmcs.dto.ProductInfoDTO;

@Repository("productListDao")
public class ProductListDaoImple implements ProductListDao {
	// 필드 변수
	@Autowired
	private SqlSession ss; // mybatis DB 연결 세션 객체

	// ---------- Override methods ----------
	/**
	 * 모든 데이터를 가져와 리스트 객체로 만들어 반환한다.
	 * 
	 * @return List&lt;ProductInfoDTO&gt; 상품리스트 dto객체들을 저장한 리스트객체
	 * */
	@Override
	public List<ProductInfoDTO> selectAll() {
		return ss.selectList("kr.co.nmcs.productList.selectAll");
	} // selectAll method end

	/**
	 * 인기도순으로 8개 데이터를 가져와 리스트 객체로 만들어 반환한다.
	 * 
	 * @return List&lt;ProductInfoDTO&gt; 상품리스트 dto객체들을 저장한 리스트객체
	 * */
	@Override
	public List<ProductInfoDTO> selectTop8() {
		return ss.selectList("kr.co.nmcs.productList.selectTop8");
	} // selectTop8 method end

	/**
	 * 세트상품 정보만 조회하여 리스트 객체로 만들어 반환한다.
	 * 
	 * @return List&lt;ProductInfoDTO&gt; 세트 상품리스트 dto객체들을 저장한 리스트객체
	 * */
	@Override
	public List<ProductInfoDTO> selectSetAll() {
		return ss.selectList("kr.co.nmcs.productList.selectSet");
	} // selectSet method end
	
	/**
	 * 10개의 세트상품 정보만 조회하여 리스트 객체로 만들어 반환한다.
	 * 
	 * @return List&lt;ProductInfoDTO&gt; 세트 상품리스트 dto객체들을 저장한 리스트객체
	 * */
	@Override
	public List<ProductInfoDTO> selectSet10() {
		return ss.selectList("kr.co.nmcs.productList.selectSet10");
	} // selectSet10 method end

	/**
	 * 특정 코드의 상품 정보를 DB에서 가져와 DTO 객체로 만들어 반환한다.
	 * 
	 * @param scode : 상품 코드
	 * @return ProductInfoDTO 상품 정보 DTO 객체
	 * */
	@Override
	public ProductInfoDTO selectOne(int scode) {
		return ss.selectOne("kr.co.nmcs.productList.selectOne");
	} // selectOne method end
	// ---------- Override methods end ----------

	// DI Setter
	public void setSs(SqlSession ss) {
		this.ss = ss;
	}


}
