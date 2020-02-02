package com.cy.test.domain;

import java.sql.Timestamp;

public class BoardVo {
	private int board_num;
	private String board_title;
	private String board_content;
	private String board_writer;
	private Timestamp board_regdate;
	private int board_veiwcnt;
	
	public int getBoard_num() {
		return board_num;
	}
	public void setBoard_num(int board_num) {
		this.board_num = board_num;
	}
	public String getBoard_title() {
		return board_title;
	}
	public void setBoard_title(String board_title) {
		this.board_title = board_title;
	}
	public String getBoard_content() {
		return board_content;
	}
	public void setBoard_content(String board_content) {
		this.board_content = board_content;
	}
	public String getBoard_writer() {
		return board_writer;
	}
	public void setBoard_writer(String board_writer) {
		this.board_writer = board_writer;
	}
	public Timestamp getBoard_regdate() {
		return board_regdate;
	}
	public void setBoard_regdate(Timestamp board_regdate) {
		this.board_regdate = board_regdate;
	}
	public int getBoard_veiwcnt() {
		return board_veiwcnt;
	}
	public void setBoard_veiwcnt(int board_veiwcnt) {
		this.board_veiwcnt = board_veiwcnt;
	}
	
	@Override
	public String toString() {
		return "TestBoardVo [board_num=" + board_num + ", board_title=" + board_title + ", board_content="
				+ board_content + ", board_writer=" + board_writer + ", board_regdate=" + board_regdate
				+ ", board_veiwcnt=" + board_veiwcnt + "]";
	}
}
