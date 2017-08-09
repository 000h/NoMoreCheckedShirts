package kr.co.nmcs.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.nmcs.dto.AccountDTO;

@Repository("AccountDAO")
public class AccountDaoImple implements AccountDao {

	@Autowired
	private SqlSession ss;

	public void setSs(SqlSession ss) {
		this.ss = ss;
	}

	@Override
	public void register(AccountDTO adto) {
		// TODO Auto-generated method stub

	}

	@Override
	public void modifyAccount() {
		// TODO Auto-generated method stub

	}

	@Override
	public void withdrawal() {
		// TODO Auto-generated method stub

	}

	/* 전체 회원 리스트 */
	@Override
	public List<AccountDTO> accountAll() {
		// TODO Auto-generated method stub
		
		return ss.selectList("kr.co.nmcs.account.accountAll");
	}

	// 동희작업본

	@Override
	public void insertOne(AccountDTO dto) {
		ss.insert("kr.co.nmcs.account.create", dto);
		
	}

	@Override
	public AccountDTO selectOne(int acode) {
		return ss.selectOne("kr.co.nmcs.account.readOne", acode);
	}

	@Override
	public void updateOne(AccountDTO dto) {
		ss.update("kr.co.nmcs.account.update", dto);
		
	}

	@Override
	public void deleteOne(int acode) {
		ss.delete("kr.co.nmcs.account.delete", acode);
		
	}
	


	
}
