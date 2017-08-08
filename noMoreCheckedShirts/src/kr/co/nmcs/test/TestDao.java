package kr.co.nmcs.test;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("testDao")
public class TestDao {
	
	@Autowired // spring-ctx.xml에서 setter DI로 SqlSession bean의 참조값을 전달한 것과 같은 역할
	private SqlSession ss;

	public void setSs(SqlSession ss) {
		this.ss = ss;
	}
	
	public List<TestDTO> selectAll() {
		List<TestDTO> list = ss.selectList("test.testSelect");
		System.out.println(list);
		return list;
	}
}
