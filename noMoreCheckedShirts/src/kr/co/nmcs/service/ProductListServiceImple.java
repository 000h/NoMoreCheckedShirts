package kr.co.nmcs.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import kr.co.nmcs.dao.ProductListDao;
import kr.co.nmcs.dto.ProductInfoDTO;

/**
 * 상품 정보 취득 CURD 클래스
 * */
@Service("productList")
public class ProductListServiceImple implements ProductListService {
	@Resource(name="productListDao")
	private ProductListDao dao; // DB처리 모델 객체
	
	// --- Override methods ---
	/**
	 * 전체 상품 리스트를 조건없이 가져온다.
	 * */
	@Override
	public List<ProductInfoDTO> readAll() {
		return dao.selectAll();
	}

	/**
	 * 최상위 인기 상품 8개 제품을 가져온다.
	 * */
	@Override
	public List<ProductInfoDTO> readTop8() {
		return dao.selectTop8();
	}
	
	/**
	 * 10개의 세트상품 정보만 가져온다.
	 * */
	@Override
	public List<ProductInfoDTO> readSet10() {
		return dao.selectSet10();
	}
	// --- Override methods end ---

	// DI Setter
	public void setDao(ProductListDao dao) {
		this.dao = dao;
	}


}
