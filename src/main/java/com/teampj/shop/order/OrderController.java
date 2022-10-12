package com.teampj.shop.order;

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
import org.springframework.web.servlet.view.RedirectView;

import com.teampj.shop.list.ListDTO;
import com.teampj.shop.list.ListService;

@Controller
@RequestMapping(value = "/order/*")
public class OrderController {

	private static final Logger logger = LoggerFactory.getLogger(OrderController.class);

	@Autowired
	private SqlSession sqlSession;

	ModelAndView mav = new ModelAndView();
	JSONParser jp = new JSONParser();
	JSONObject jo;

	@RequestMapping(value = "/main", method = RequestMethod.GET)
	public ModelAndView main(Model model) {
		mav.setViewName("ordermain");
		return mav;
	}

	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public ModelAndView mainhome(Model model) {
		mav.setView(new RedirectView("/shop")); // 다른 컨트롤러로 viewname
		return mav;
	}

	// 援щℓ紐⑸줉 3媛쒖썡�씠�궡, 3媛쒖썡�씠�쟾
	@RequestMapping(value = "/orderlist", method = RequestMethod.GET) // �꽭�뀡�옉�뾽 �븘�슂
	public ModelAndView orderlist(Model model, HttpServletRequest request) {
		OrderService ser = sqlSession.getMapper(OrderService.class);
		ListService ler = sqlSession.getMapper(ListService.class);

		ArrayList<OrderDTO> list = ser.orderlist("user001", 0);
		ArrayList<ListDTO> list2 = ler.orderlist("user001", 0);

		mav.addObject("list", list);
		mav.addObject("list2", list2);
		mav.setViewName("userorderlist");
		return mav;
	}
	
	@RequestMapping(value = "/beforeorderlist", method = RequestMethod.POST) // �꽭�뀡�옉�뾽 �븘�슂
	public ModelAndView beforeorderlist(Model model, HttpServletRequest request) {
		OrderService ser = sqlSession.getMapper(OrderService.class);
		ListService ler = sqlSession.getMapper(ListService.class);

		int stnrd = Integer.parseInt(request.getParameter("stnrd"));
		ArrayList<OrderDTO> list = ser.orderlist("user001", stnrd);
		ArrayList<ListDTO> list2 = ler.orderlist("user001", stnrd);

		mav.addObject("list", list);
		mav.addObject("list2", list2);
		mav.setViewName("userorderlist");
		return mav;
	}

	// 주문내역 > 주문상세정보
	@RequestMapping(value = "/orderdetail", method = RequestMethod.GET) // 세션작업필요
	public ModelAndView orderdetail(Model model, HttpServletRequest request) {
		OrderService ser = sqlSession.getMapper(OrderService.class);
		ListService ler = sqlSession.getMapper(ListService.class);

		String ocode = request.getParameter("ocode");
		OrderDTO dto = ser.orderdetail("user001", ocode);
		ListDTO lto = ler.orderdetail("user001", ocode);

		mav.addObject("dto", dto);
		mav.addObject("lto", lto);
		mav.setViewName("userorderdetail");
		return mav;
	}

	// 배송정보 수정 출력
	@RequestMapping(value = "/userorderchangeget", method = RequestMethod.GET)
	public ModelAndView userorderchangeget(Model model, HttpServletRequest request) {
		OrderService ser = sqlSession.getMapper(OrderService.class);
		ListService ler = sqlSession.getMapper(ListService.class);

		String ocode = request.getParameter("ocode");
		OrderDTO dto = ser.userorderchangeget("user001", ocode);
		ListDTO lto = ler.userorderchangeget("user001", ocode);

		mav.addObject("dto", dto);
		mav.addObject("lto", lto);
		mav.setViewName("userorderchange");

		return mav;
	}

	// 배송정보 수정 입력
	@RequestMapping(value = "/userorderchangeset", method = RequestMethod.GET)
	public ModelAndView userorderchangeset(Model model, HttpServletRequest request) {
		OrderService ser = sqlSession.getMapper(OrderService.class);

		String ocode = request.getParameter("ocode");
		String ozipcode = request.getParameter("ozipcode");
		String oaddress = request.getParameter("oaddress");
		String omemo = request.getParameter("omemo");
		ser.userorderchangeset(ocode, ozipcode, oaddress, omemo);

		mav.setViewName("userorderchange");

		return mav;
	}

	// 취소신청
	@RequestMapping(value = "/userordercancel", method = RequestMethod.GET)
	public ModelAndView userordercancel(HttpServletRequest request, Model model) {
		OrderService ser = sqlSession.getMapper(OrderService.class);

		String ocode = request.getParameter("ocode");
		ser.ordercancel(ocode, "user001");

		mav.setViewName("userorderlist");
		return mav;
	}

	// 환불신청
	@RequestMapping(value = "/userorderrefund", method = RequestMethod.GET)
	public ModelAndView userorderrefund(HttpServletRequest request, Model model) {
		OrderService ser = sqlSession.getMapper(OrderService.class);

		String ocode = request.getParameter("ocode");
		ser.orderrefund(ocode, "user001");

		mav.setViewName("userorderlist");
		return mav;
	}
	
	@RequestMapping(value = "/usertoseller", method = RequestMethod.GET)
	public ModelAndView usertoseller(Model model, HttpServletRequest request) {

		String ocode = request.getParameter("ocode");

		mav.addObject("ocode", ocode);
		mav.setView(new RedirectView("/shop/board/usertoseller"));

		return mav;
	}
	
	@RequestMapping(value = "/userreviewwrite", method = RequestMethod.GET)
	public ModelAndView userreviewwrite(Model model, HttpServletRequest request) {

		String ocode = request.getParameter("ocode");

		mav.addObject("ocode", ocode);
		mav.setView(new RedirectView("/shop/board/userreviewwrite"));

		return mav;
	}

}
