package kr.co.nmcs.service;

import java.util.List;

import kr.co.nmcs.dto.ProductInsertDTO;

public interface ProductInsertService {
	public void insertProduct(ProductInsertDTO dto);

	public List<ProductInsertDTO> selectType();
}
