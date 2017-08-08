package kr.co.nmcs.dao;

import java.util.List;

import kr.co.nmcs.dto.AccountDTO;

public interface AccountDao {

	public void register(AccountDTO adto);

	public void modifyAccount();

	public void withdrawal();

	public List<AccountDTO> accountAll();

}
