package com.cy.test.service;

import java.util.List;

import com.cy.test.domain.BoardVo;

public interface BoardService {
	public void insert(BoardVo testBoardVo) throws Exception;
	public BoardVo read(int board_num) throws Exception;;
	public void update(BoardVo testBoardVo) throws Exception;
	public void delete(int board_num) throws Exception;
	public List<BoardVo> listAll() throws Exception;
}
