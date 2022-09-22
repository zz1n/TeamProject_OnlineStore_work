package com.teampj.shop.check;

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
@RequestMapping(value="/check/**")
public class CheckController {

	private static final Logger logger = LoggerFactory.getLogger(CheckController.class);

	@Autowired
	private SqlSession sqlSession;

	ModelAndView mav = new ModelAndView();
	JSONParser jp = new JSONParser();
	JSONObject jo;

	@RequestMapping(value = "/main", method = RequestMethod.GET)
	public ModelAndView home(Model model) {
		mav.setViewName("checkmain");
		return mav;
	}
	
	// 유저 장바구니/좋아요
	@RequestMapping(value = "/usercheck", method = RequestMethod.GET)	// 세션작업 필요
	public ModelAndView usercheck(Model model, HttpServletRequest request) {
		// 세션에서 아이디 가져오는걸로 수정하기
		ListService ser = sqlSession.getMapper(ListService.class);
		
		int bcode = Integer.parseInt(request.getParameter("bcode"));
		ArrayList<ListDTO> list = ser.usercheck("user003", bcode);
		mav.addObject("list", list);
		
		if(bcode==1) {
			mav.setViewName("usercart");
		} else if ( bcode==2 ) {
			mav.setViewName("userlike");
		}

		return mav;
	}

}
