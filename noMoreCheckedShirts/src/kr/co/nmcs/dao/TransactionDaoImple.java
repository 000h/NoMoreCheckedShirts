package kr.co.nmcs.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.nmcs.dto.TransactionDTO;

@Repository("transactionDao")
public class TransactionDaoImple implements TransactionDao {

	@Autowired
	SqlSession ss;

	public void setSs(SqlSession ss) {
		this.ss = ss;
	}

	@Override
	public List<TransactionDTO> selectAll() {
	
		return ss.selectList("kr.co.nmcs.transaction.selectAll");
	}

	@Override
	public TransactionDTO selectRev(int tcode) {
		
		return ss.selectOne("kr.co.nmcs.transaction.selectRev", tcode);
	}

	@Override
	public TransactionDTO selectAccount(String id) {
		
		return ss.selectOne("kr.co.nmcs.transaction.selectAccount", id);
	}

	@Override
	public List<TransactionDTO> selectInfo(int tcode) {
		
		return ss.selectList("kr.co.nmcs.transaction.selectInfo", tcode);
	}

}
