package kr.co.nmcs.dao;

import kr.co.nmcs.dto.ProductSetInsertDTO;

public interface ProductSetInsertDao {
	public void insertIntoProductInfo(ProductSetInsertDTO dto);
	public void insertIntoCodiSet(ProductSetInsertDTO dto);

}
