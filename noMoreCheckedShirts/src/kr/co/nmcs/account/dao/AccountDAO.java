package kr.co.nmcs.account.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.nmcs.account.dto.AccountDTO;

@Repository("AccountDAO")
public class AccountDAO implements DaoA {

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
		System.out.println("ss >> " + ss);
		return ss.selectList("kr.co.nmcs.account.accountAll");
	}
	
	

}
