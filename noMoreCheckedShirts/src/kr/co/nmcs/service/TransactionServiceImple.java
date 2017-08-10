package kr.co.nmcs.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import kr.co.nmcs.dao.TransactionDao;
import kr.co.nmcs.dto.TransactionDTO;

@Service("transactionService")
public class TransactionServiceImple implements TransactionService {

	@Resource(name = "transactionDao")
	TransactionDao daoT;

	public void setDao(TransactionDao daoT) {
		this.daoT = daoT;
	}
	
	// tcode, id, tradate, trastatus 
	@Override
	public List<TransactionDTO> readAll() {
		
		return daoT.selectAll();
	}

	@Override
	public TransactionDTO readRev(int tcode) {
	
		return daoT.selectRev(tcode);
	}

	@Override
	public TransactionDTO readAccount(String id) {
		
		return daoT.selectAccount(id);
	}

	@Override
	public TransactionDTO readInfo(int tcode) {
		
		return daoT.selectInfo(tcode);
	}

}
