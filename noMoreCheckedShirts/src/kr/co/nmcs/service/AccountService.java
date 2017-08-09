package kr.co.nmcs.service;

import java.util.List;

import kr.co.nmcs.dto.AccountDTO;

public interface AccountService {
	public void register(AccountDTO adto);

	public void modifyAccount();

	public void withdrawal();

	public List<AccountDTO> accountAll();
	
	//동희 작업분
	public void create(AccountDTO dto);
	public AccountDTO readOne(int acode);
	public void update(AccountDTO dto);
	public void delete(int acode);
}