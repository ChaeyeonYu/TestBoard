package com.cy.test.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.cy.test.domain.BoardVo;

@Repository
public class BoardDaoImpl implements BoardDao {

	private static final String NAMESPACE = "com.cy.mappers.boardMapper";
	
	@Inject
	private SqlSession sqlSession;
	
	@Override
	public void insert(BoardVo testBoardVo) throws Exception {
		sqlSession.insert(NAMESPACE + ".insert", testBoardVo);
	}

	@Override
	public BoardVo read(int board_num) throws Exception {
		return sqlSession.selectOne(NAMESPACE + ".read", board_num);
	}

	@Override
	public void update(BoardVo testBoardVo) throws Exception {
		sqlSession.update(NAMESPACE + ".update", testBoardVo);
	}

	@Override
	public void delete(int board_num) throws Exception {
		sqlSession.delete(NAMESPACE + ".delete", board_num);
	}

	@Override
	public List<BoardVo> listAll() throws Exception {
		return sqlSession.selectList(NAMESPACE + ".listAll");
	}

}
