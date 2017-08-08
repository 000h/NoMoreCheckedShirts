package kr.co.nmcs.service;

import java.util.List;

import kr.co.nmcs.dto.AccountDTO;

public interface AccountService {
	public void register(AccountDTO adto);

	public void modifyAccount();

	public void withdrawal();

	public List<AccountDTO> accountAll();

}