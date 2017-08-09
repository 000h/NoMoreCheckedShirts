package kr.co.nmcs.service;

import java.util.List;

import kr.co.nmcs.dto.ProductInfoDTO;

/**
 * 상품 리스트 취득 인터페이스
 * */
public interface ProductListService {
	// CURD
	/**
	 * 전체 상품 리스트를 조건없이 가져온다.
	 * */
	public List<ProductInfoDTO> readAll();
	
	/**
	 * 최상위 인기 상품 8개 제품을 가져온다.
	 * */
	public List<ProductInfoDTO> readTop8();

	/**
	 * 세트 상품만 가져온다.
	 * */
	public List<ProductInfoDTO> readSetAll();
	
	/**
	 * 10개의 세트 상품만 가져온다.
	 * */
	public List<ProductInfoDTO> readSet10();
	
	/**
	 * 검색 키워드를 만족하는 세트 상품만 가져온다.
	 * */
	public List<ProductInfoDTO> readSetSearch(String search);
	
	/**
	 * 해당 제품코드에 맞는 세트 상품 정보를 가져온다.
	 * */
	public ProductInfoDTO readOne(int scode);
	
	/**
	 * 해당 세트 제품의 구성 제품정보를 가져온다.
	 * */
	public List<ProductInfoDTO> readCodiset(int scode);
} // ProductListService interface end
