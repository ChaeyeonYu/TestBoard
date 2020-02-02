package com.cy.test.persistence;

import java.util.List;

import com.cy.test.domain.BoardVo;

public interface BoardDao {
	public void insert(BoardVo testBoardVo) throws Exception;
	public BoardVo read(int board_num) throws Exception;
	public void update(BoardVo testBoardVo) throws Exception;
	public void delete(int board_num) throws Exception;
	public List<BoardVo> listAll() throws Exception;
}
