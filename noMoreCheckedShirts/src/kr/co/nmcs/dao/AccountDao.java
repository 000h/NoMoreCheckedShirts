package kr.co.nmcs.dao;

import java.util.List;

import kr.co.nmcs.dto.AccountDTO;

public interface AccountDao {
	

	public void register(AccountDTO adto);

	public void modifyAccount();

	public void withdrawal();

	public List<AccountDTO> accountAll();
	
	public AccountDTO login(String id, String pw);
	
	public void logout();
	
	//동희 작업분
	public void insertOne(AccountDTO dto);
	public AccountDTO selectOne(int acode);
	public void updateOne(AccountDTO dto);
	public void deleteOne(int acode);

}
