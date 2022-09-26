package com.teampj.shop.user;

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

import com.teampj.shop.board.BoardDTO;
import com.teampj.shop.board.BoardService;
import com.teampj.shop.list.ListDTO;
import com.teampj.shop.list.ListService;
import com.teampj.shop.order.OrderDTO;
import com.teampj.shop.order.OrderService;

@Controller
@RequestMapping(value = "/user/**")
public class UserController {

	private static final Logger logger = LoggerFactory.getLogger(UserController.class);

	@Autowired
	private SqlSession sqlSession;

	ModelAndView mav = new ModelAndView();
	JSONParser jp = new JSONParser();
	JSONObject jo;

	@RequestMapping(value = "/main", method = RequestMethod.GET)
	public ModelAndView main(Model model) {
		mav.setViewName("usermain");
		return mav;
	}

	// 구매목록 3개월이내, 3개월이전
	@RequestMapping(value = "/orderlist", method = RequestMethod.GET) // 세션작업 필요
	public ModelAndView orderlist(Model model, HttpServletRequest request) {
		OrderService ser = sqlSession.getMapper(OrderService.class);

		int stnrd = Integer.parseInt(request.getParameter("stnrd"));
		ArrayList<OrderDTO> list = ser.orderlist("user001", stnrd);

		mav.addObject("list", list);
		mav.setViewName("userorderlist");
		return mav;
	}

	// 작성한 리뷰 보기
	@RequestMapping(value = "/reviewout", method = RequestMethod.GET) // 세션작업 필요
	public ModelAndView reviewout(Model model, HttpServletRequest request) {
		// 세션에서 아이디 가져오는걸로 수정하기
		BoardService ser = sqlSession.getMapper(BoardService.class);

		int bnum = Integer.parseInt(request.getParameter("bnum"));
		System.out.println("몇번리뷰?" + bnum);
		BoardDTO dto = ser.usereareview("user001", bnum);

		mav.addObject("dto", dto);
		mav.setViewName("userreviewout");
		return mav;
	}

	// 구매목록에서 리뷰 작성하러가기
	@RequestMapping(value = "/userreviewwrite", method = RequestMethod.GET) // 세션작업 필요
	public ModelAndView userreviewwrite(Model model, HttpServletRequest request) {

		String ocode = request.getParameter("ocode");

		mav.addObject("ocode", ocode);
		mav.setViewName("userreviewwrite");
		return mav;
	}

	// 작성한 리뷰 저장
	@RequestMapping(value = "/userreviewsave", method = RequestMethod.POST) // 세션작업 필요
	public ModelAndView userreviewsave(Model model, HttpServletRequest request) {
		// 세션에서 아이디 가져오는걸로 수정하기
		BoardService ser = sqlSession.getMapper(BoardService.class);

		String ocode = request.getParameter("ocode");
		String bname = request.getParameter("bname");
		String bcont = request.getParameter("bcont");

		int k = ser.userreviewsave(ocode, bname, bcont);
		System.out.println(k + "리뷰저장됐니?");

		mav.setViewName("redirect:main");
		return mav;
	}

	// 내가 작성한 리뷰 목록 보기
	@RequestMapping(value = "/reviewlist", method = RequestMethod.GET) // 세션작업 필요
	public ModelAndView reviewlist(Model model, HttpServletRequest request) {
		// 세션에서 아이디 가져오는걸로 수정하기
		BoardService ser = sqlSession.getMapper(BoardService.class);

		int btype = Integer.parseInt(request.getParameter("btype"));
		ArrayList<BoardDTO> list = ser.userreviewlist("user001", btype);

		mav.addObject("list", list);
		mav.setViewName("userreviewlist");
		return mav;
	}

	// 내가 작성한 리뷰 삭제하기
	@RequestMapping(value = "/userreviewdel", method = RequestMethod.GET) // 세션작업 필요
	public ModelAndView userreviewdel(Model model, HttpServletRequest request) {
		// 세션에서 아이디 가져오는걸로 수정하기

		BoardService ser = sqlSession.getMapper(BoardService.class);
		int bnum = Integer.parseInt(request.getParameter("bnum"));

		int k = ser.userboarddel("user001", bnum);
		System.out.println("리뷰삭제됐니? " + k);

		mav.setViewName("redirect:main");

		return mav;
	}

	// 리뷰 수정 출력
	@RequestMapping(value = "/reviewupdate", method = RequestMethod.GET) // 세션작업 필요
	public ModelAndView reviewupdate(Model model, HttpServletRequest request) {
		// 세션에서 아이디 가져오는걸로 수정하기
		BoardService ser = sqlSession.getMapper(BoardService.class);

		int bnum = Integer.parseInt(request.getParameter("bnum"));
		BoardDTO dto = ser.usereareview("user001", bnum);

		mav.addObject("dto", dto);
		mav.setViewName("userreviewupdate");
		return mav;
	}

	// 수정한 리뷰 저장
	@RequestMapping(value = "/reviewupdateset", method = RequestMethod.POST) // 세션작업 필요
	public ModelAndView reviewupdateset(Model model, HttpServletRequest request) {
		// 세션에서 아이디 가져오는걸로 수정하기
		BoardService ser = sqlSession.getMapper(BoardService.class);

		String bnum = request.getParameter("bnum");
		String bname = request.getParameter("bname");
		String bcont = request.getParameter("bcont");

		int k = ser.userreviewupdateset("user001", bnum, bname, bcont);
		System.out.println(k + "리뷰수정됐니?");

		mav.setViewName("redirect:main");
		return mav;
	}

	// 문의하러가기
	@RequestMapping(value = "/usertoseller", method = RequestMethod.GET) // 세션작업 필요
	public ModelAndView usertoseller(Model model, HttpServletRequest request) {
		// 세션에서 아이디 가져오는걸로 수정하기

		ListService ser = sqlSession.getMapper(ListService.class);
		String ocode = request.getParameter("ocode");
		System.out.println("usertoseller ocode 잘 도착했니? " + ocode);
		ListDTO dto = ser.usertoseller(ocode);

		mav.addObject("dto", dto);
		mav.setViewName("usertoseller");

		return mav;
	}
	
	// 문의 저장하기
	@RequestMapping(value = "/usertosellersave", method = RequestMethod.POST) // 세션작업 필요
	public ModelAndView usertosellersave(Model model, HttpServletRequest request) {
		// 세션에서 아이디 가져오는걸로 수정하기
		
		BoardService ser = sqlSession.getMapper(BoardService.class);
		
		String bname = request.getParameter("bname");
		String bcont = request.getParameter("bcont");
		String pcode = request.getParameter("pcode");
		System.out.println("문의 등록 중! "+bname+pcode);
		
		int k = ser.usertosellersave("user001", bname, bcont, pcode);
		System.out.println("문의 등록 됐니? "+k);
		
		mav.setViewName("redirect:main");
		
		return mav;
	}

	// 내가 쓴 문의 목록 확인
	@RequestMapping(value = "/usertosellerlist", method = RequestMethod.GET) // 세션작업 필요
	public ModelAndView usertosellerlist(Model model, HttpServletRequest request) {
		// 세션에서 아이디 가져오는걸로 수정하기
		
		int btype = Integer.parseInt(request.getParameter("btype"));
		BoardService ser = sqlSession.getMapper(BoardService.class);
		ArrayList<BoardDTO> list = ser.usertolist("user001", btype);

		mav.addObject("list", list);
		mav.setViewName("usertosellerlist");

		return mav;
	}

	// 내가 쓴 문의 내용
	@RequestMapping(value = "/usertosellerout", method = RequestMethod.GET) // 세션작업 필요
	public ModelAndView usertosellerout(Model model, HttpServletRequest request) {
		// 세션에서 아이디 가져오는걸로 수정하기
		BoardService ser = sqlSession.getMapper(BoardService.class);
		
		int bnum = Integer.parseInt(request.getParameter("bnum"));
		System.out.println("문의 내용 읽으러 왔는데, "+bnum);
		
		ArrayList<BoardDTO> list = ser.usertosellerout(bnum);

		mav.addObject("list", list);
		mav.setViewName("usertosellerout");

		return mav;
	}

	// 내가 쓴 문의 삭제
	@RequestMapping(value = "/usertosellerdel", method = RequestMethod.GET) // 세션작업 필요
	public ModelAndView usertosellerdel(Model model, HttpServletRequest request) {
		// 세션에서 아이디 가져오는걸로 수정하기
		BoardService ser = sqlSession.getMapper(BoardService.class);
		
		int bnum = Integer.parseInt(request.getParameter("bnum"));
		System.out.println("문의 내용 삭제하러, "+bnum);
		
		int k = ser.userboarddel("user001", bnum);
		System.out.println("문의 삭제 됐니? "+k);

		mav.setViewName("redirect:main");

		return mav;
	}
}
