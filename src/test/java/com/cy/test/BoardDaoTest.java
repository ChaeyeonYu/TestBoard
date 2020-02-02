package com.cy.test;

import javax.inject.Inject;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.cy.test.domain.BoardVo;
import com.cy.test.persistence.BoardDao;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/spring/**/*.xml"})
public class BoardDaoTest {
	
	@Inject
	BoardDao boardDao;
	
	@Test
	public void insert() throws Exception{
		BoardVo boardVo = new BoardVo();
		boardVo.setBoard_title("title3");
		boardVo.setBoard_content("content3");
		boardVo.setBoard_writer("writer3");
		boardDao.insert(boardVo);
	}
	
	@Test
	public void read() throws Exception{
		boardDao.read(1);
	}
	
	@Test
	public void update() throws Exception{
		BoardVo boardVo = new BoardVo();
		boardVo.setBoard_num(1);
		boardVo.setBoard_title("update");
		boardVo.setBoard_content("update");
		boardVo.setBoard_writer("writer1");
		boardDao.update(boardVo);
	}
	
	@Test
	public void delete() throws Exception{
		boardDao.delete(1);
	}
	
	@Test
	public void listAll() throws Exception{
		boardDao.listAll();
	}

}
