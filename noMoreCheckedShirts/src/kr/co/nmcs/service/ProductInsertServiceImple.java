package kr.co.nmcs.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import kr.co.nmcs.dao.ProductInsertDao;
import kr.co.nmcs.dto.ProductInsertDTO;

@Service("productInsert")
public class ProductInsertServiceImple implements ProductInsertService {

	@Resource(name = "productInsertDao")
	ProductInsertDao daoI;

	public void setDaoI(ProductInsertDao daoI) {
		this.daoI = daoI;
	}

	@Override
	public void insertProduct(ProductInsertDTO dto) {
		daoI.insertProduct(dto);

	}



	@Override
	public List<ProductInsertDTO> selectType() {
		
		return daoI.selectType();
	}

}
