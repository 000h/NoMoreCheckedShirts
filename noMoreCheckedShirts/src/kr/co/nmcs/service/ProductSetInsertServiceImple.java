package kr.co.nmcs.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import kr.co.nmcs.dao.ProductSetInsertDao;
import kr.co.nmcs.dto.ProductSetInsertDTO;

@Service("productSetInsert")
public class ProductSetInsertServiceImple implements ProductSetInsertService{
	
	@Resource(name="productSetInsertDao")
	ProductSetInsertDao psidao;
	
	
	public void setPsidao(ProductSetInsertDao psidao) {
		this.psidao = psidao;
	}

	@Override
	public void insertIntoProductInfo(ProductSetInsertDTO dto) {
		
		psidao.insertIntoProductInfo(dto);
	}

	@Override
	public void insertIntoCodiSet(ProductSetInsertDTO dto) {
		
		psidao.insertIntoCodiSet(dto);
	}
	
	
	
}
