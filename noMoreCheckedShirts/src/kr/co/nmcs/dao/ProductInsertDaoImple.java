package kr.co.nmcs.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.nmcs.dto.ProductInsertDTO;

@Repository("productInsertDao")
public class ProductInsertDaoImple implements ProductInsertDao {

	@Autowired
	SqlSession ss;

	public void setSs(SqlSession ss) {
		this.ss = ss;
	}

	@Override
	public void insertProduct(ProductInsertDTO dto) {

		ss.insert("kr.co.nmcs.productInsert.insertProduct", dto);
	}


	@Override
	public List<ProductInsertDTO> selectType() {
	
		return ss.selectList("kr.co.nmcs.productInsert.selectType");
	}

	@Override
	public List<ProductInsertDTO> selectProductList() {
		
		return ss.selectList("kr.co.nmcs.productInsert.selectProductList");
	}

}
