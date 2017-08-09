package kr.co.nmcs.dao;

import java.util.List;

import kr.co.nmcs.dto.ProductInfoDTO;

/**
 * 상품 리스트 DB 처리 모델 인터페이스
 * */
public interface ProductListDao {
	/**
	 * 모든 데이터를 가져와 리스트 객체로 만들어 반환한다.
	 * 
	 * @return List&lt;ProductInfoDTO&gt; 상품리스트 dto객체들을 저장한 리스트객체
	 * */
	public List<ProductInfoDTO> selectAll();

	/**
	 * 인기도순으로 8개 데이터를 가져와 리스트 객체로 만들어 반환한다.
	 * 
	 * @return List&lt;ProductInfoDTO&gt; 상품리스트 dto객체들을 저장한 리스트객체
	 * */
	public List<ProductInfoDTO> selectTop8();
	
	/**
	 * 세트상품 정보만 조회하여 리스트 객체로 만들어 반환한다.
	 * 
	 * @return List&lt;ProductInfoDTO&gt; 세트 상품리스트 dto객체들을 저장한 리스트객체
	 * */
	public List<ProductInfoDTO> selectSetAll();
	
	/**
	 * 10개의 세트상품 정보만 조회하여 리스트 객체로 만들어 반환한다.
	 * 
	 * @return List&lt;ProductInfoDTO&gt; 세트 상품리스트 dto객체들을 저장한 리스트객체
	 * */
	public List<ProductInfoDTO> selectSet10();
	
	/**
	 * 특정 코드의 상품 정보를 DB에서 가져와 DTO 객체로 만들어 반환한다.
	 * 
	 * @param scode : 상품 코드
	 * @return ProductInfoDTO 상품 정보 DTO 객체
	 * */
	public ProductInfoDTO selectOne(int scode);

	/**
	 * 특정 코드의 상품에 구성 제품들을 조회하여 리스트 객체로 만들어 반환한다.
	 * 
	 * @param scode : 상품 코드
	 * @return 구성요소 개수
	 * */
	public List<ProductInfoDTO> selectCodiset(int scode);
}
