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

@Controller
@RequestMapping(value="/board/**")
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
	
	// 내가 작성한 리뷰 삭제하기
	@RequestMapping(value = "/userreviewdel", method = RequestMethod.GET) // 세션작업 필요
	public ModelAndView userreviewdel(Model model, HttpServletRequest request) {
		// 세션에서 아이디 가져오는걸로 수정하기
		
		BoardService ser = sqlSession.getMapper(BoardService.class);
		int bnum = Integer.parseInt(request.getParameter("bnum"));
		
		int k = ser.userreviewdel("user001", bnum);
		System.out.println("리뷰삭제됐니? " + k);
		
		mav.setViewName("userreviewlist");
		
		return mav;
	}
}
