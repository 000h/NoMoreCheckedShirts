package kr.co.nmcs.service;

import java.util.List;

import kr.co.nmcs.dto.TransactionDTO;

public interface TransactionService {
	
	public List<TransactionDTO> readAll();
	public TransactionDTO readRev(int tcode);
	public TransactionDTO readAccount(String id);
	public List<TransactionDTO> readInfo(int tcode);
	
}
