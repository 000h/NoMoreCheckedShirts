package kr.co.nmcs.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.nmcs.dto.ProductSetInsertDTO;

@Repository("productSetInsertDao")
public class ProductSetInsertDaoImple implements ProductSetInsertDao {

	@Autowired
	SqlSession ss;

	public void setSs(SqlSession ss) {
		this.ss = ss;
	}

	@Override
	public void insertIntoProductInfo(ProductSetInsertDTO dto) {

		ss.insert("kr.co.nmcs.productSetInsert.insertIntoProductInfo", dto);
	}

	@Override
	public void insertIntoCodiSet(ProductSetInsertDTO dto) {

		ss.insert("kr.co.nmcs.productSetInsert.insertIntoCodiSet", dto);
	}

}
