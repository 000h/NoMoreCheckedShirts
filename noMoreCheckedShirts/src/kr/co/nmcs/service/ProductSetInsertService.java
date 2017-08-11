package kr.co.nmcs.service;

import kr.co.nmcs.dto.ProductSetInsertDTO;

public interface ProductSetInsertService {
	
	public void insertIntoProductInfo(ProductSetInsertDTO dto);
	public void insertIntoCodiSet(ProductSetInsertDTO dto);
	
}
