package kr.co.nmcs.dao;

import java.util.List;

import kr.co.nmcs.dto.TransactionDTO;

public interface TransactionDao {
	
	public List<TransactionDTO> selectAll();
	public TransactionDTO selectRev(int tcode);
	public TransactionDTO selectAccount(String id);
	public List<TransactionDTO> selectInfo(int tcode);
}
