package kr.co.nmcs.account.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import kr.co.nmcs.account.dao.DaoA;
import kr.co.nmcs.account.dto.AccountDTO;

@Service("accountService")
public class AccountServiceImple implements AccountService {

	@Resource(name = "AccountDAO")
	DaoA daoA;

	public void setDaoA(DaoA daoA) {
		this.daoA = daoA;
	}

	@Override
	public void register(AccountDTO adto) {
		// TODO Auto-generated method stub
		daoA.register(adto);
	}

	@Override
	public void modifyAccount() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void withdrawal() {
		// TODO Auto-generated method stub

	}

	@Override
	public List<AccountDTO> accountAll() {
		// TODO Auto-generated method stub
		return daoA.accountAll();
	}

}