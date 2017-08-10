package kr.co.nmcs.dao;

import java.util.List;

import kr.co.nmcs.dto.ProductInsertDTO;

public interface ProductInsertDao {

	
	public void insertProduct(ProductInsertDTO dto);

	
	public List<ProductInsertDTO> selectType();
}
