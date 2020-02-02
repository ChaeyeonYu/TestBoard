package com.cy.test.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Repository;

import com.cy.test.domain.BoardVo;
import com.cy.test.persistence.BoardDao;

@Repository
public class BoardServiceImpl implements BoardService {

	@Inject
	private BoardDao testBoardDao;
	
	@Override
	public void insert(BoardVo testBoardVo) throws Exception {
		testBoardDao.insert(testBoardVo);
	}

	@Override
	public BoardVo read(int board_num) throws Exception {
		return testBoardDao.read(board_num);
	}

	@Override
	public void update(BoardVo testBoardVo) throws Exception {
		testBoardDao.update(testBoardVo);
	}

	@Override
	public void delete(int board_num) throws Exception {
		testBoardDao.delete(board_num);
	}

	@Override
	public List<BoardVo> listAll() throws Exception {
		return testBoardDao.listAll();
	}

}
