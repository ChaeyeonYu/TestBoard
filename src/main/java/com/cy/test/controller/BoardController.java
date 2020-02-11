package com.cy.test.controller;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.cy.test.domain.BoardVo;
import com.cy.test.service.BoardService;

@Controller
@RequestMapping("/board/*")
public class BoardController {
	
	@Inject
	private BoardService testBoardService;
	
	//글 전체보기
	@RequestMapping(value = "/listAll", method = RequestMethod.GET)
	public void listAll(Model model) throws Exception{
		List<BoardVo> list = testBoardService.listAll();
		model.addAttribute("list", list);
	}
	
	//글 1개 보기
	@RequestMapping(value = "/read", method = RequestMethod.GET)
	public String listAll(@RequestParam("board_num") int board_num, Model model) throws Exception{
		BoardVo boardVo = testBoardService.read(board_num);
		model.addAttribute("boardVo", boardVo);
		return "/board/read";
	}
	
	//글쓰기 폼
	@RequestMapping(value = "/write", method = RequestMethod.GET)
	public void write() throws Exception{
	}
	
	//글쓰기 처리
	@RequestMapping(value = "/writePro", method = RequestMethod.POST)
	public String writePro(BoardVo boardVo) throws Exception{
		System.out.println("boardVo: " + boardVo);
		testBoardService.insert(boardVo);
		return "redirect:/board/listAll";
	}
	
	//글수정 처리 updatePro
	@RequestMapping(value = "/updatePro", method = RequestMethod.POST)
	public String updatePro(BoardVo boardVo) throws Exception{
		testBoardService.update(boardVo);
		return "redirect:/board/read?board_num="+boardVo.getBoard_num();
	}
	
	//글삭제 처리
//	@RequestMapping(value = "/deletePro", method = RequestMethod.POST)
	@RequestMapping(value = "/deletePro", method = RequestMethod.GET)
	public String deletePro(@RequestParam("board_num") int board_num, RedirectAttributes rttr) throws Exception{
		testBoardService.delete(board_num);
		rttr.addFlashAttribute("msg", "delete_success");
		return "redirect:/board/listAll";
	}
	
}
