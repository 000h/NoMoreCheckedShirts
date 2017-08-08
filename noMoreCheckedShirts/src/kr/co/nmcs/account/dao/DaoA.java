package kr.co.nmcs.account.dao;

import java.util.List;

import kr.co.nmcs.account.dto.AccountDTO;

public interface DaoA {

	public void register(AccountDTO adto);

	public void modifyAccount();

	public void withdrawal();

	public List<AccountDTO> accountAll();

}
