package com.teampj.shop.board;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.teampj.shop.list.ListDTO;
import com.teampj.shop.list.ListService;

@Controller
@RequestMapping(value = "/board/**")
public class BoardController {

	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);

	@Autowired
	private SqlSession sqlSession;

	ModelAndView mav = new ModelAndView();
	JSONParser jp = new JSONParser();
	JSONObject jo;

	@RequestMapping(value = "/main", method = RequestMethod.GET)
	public ModelAndView home(Model model) {
		mav.setViewName("boardmain");
		return mav;
	}
	
	// 사이트에 문의하기
	@RequestMapping(value = "/usertosite", method = RequestMethod.GET) // 세션작업 필요
	public ModelAndView usertosite(Model model, HttpServletRequest request) {
		// 세션에서 아이디 가져오는걸로 수정하기

		mav.setViewName("usertosite");

		return mav;
	}
	
	// 사이트 문의 저장하기
	@RequestMapping(value = "/usertositesave", method = RequestMethod.POST) // 세션작업 필요
	public ModelAndView usertositesave(Model model, HttpServletRequest request) {
		// 세션에서 아이디 가져오는걸로 수정하기
			
		BoardService ser = sqlSession.getMapper(BoardService.class);
			
		String bname = request.getParameter("bname");
		String bcont = request.getParameter("bcont");
		System.out.println("문의 등록 중! "+bname);
			
		int k = ser.usertositesave("user001", bname, bcont);
		System.out.println("사이트 문의 등록 됐니? "+k);
			
		mav.setViewName("redirect:main");
			
		return mav;
	}
	
	// 사이트 문의 목록
	@RequestMapping(value = "/usertositelist", method = RequestMethod.GET) // 세션작업 필요
	public ModelAndView usertositelist(Model model, HttpServletRequest request) {
		// 세션에서 아이디 가져오는걸로 수정하기
		BoardService ser = sqlSession.getMapper(BoardService.class);
		
		int btype = Integer.parseInt(request.getParameter("btype"));
		ArrayList<BoardDTO> list = ser.usertolist("user001", btype);

		mav.addObject("list", list);
		mav.setViewName("usertositelist");

		return mav;
	}
}
