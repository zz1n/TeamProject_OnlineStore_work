package com.teampj.shop.seller;

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
@RequestMapping(value="/seller/**")
public class SellerController {

	private static final Logger logger = LoggerFactory.getLogger(SellerController.class);

	@Autowired
	private SqlSession sqlSession;

	ModelAndView mav = new ModelAndView();
	JSONParser jp = new JSONParser();
	JSONObject jo;

	@RequestMapping(value = "/main", method = RequestMethod.GET)
	public ModelAndView home(Model model) {
		mav.setViewName("sellermain");
		return mav;
	}

	
	//아이디 중복체크
	   @RequestMapping(value = "/idCheck", method = RequestMethod.POST)
	//   @ResponseBody
	   public int idck(HttpServletRequest request) throws Throwable {

	      SellerService ser = sqlSession.getMapper(SellerService.class);
	      
	   
	         request.setCharacterEncoding("utf-8");
	         String data = request.getParameter("sellerid");
	         jo = (JSONObject) jp.parse(data);
	         String sellerid= (String) jo.get("sellerid");
	         int cnt = ser.idCheck(sellerid);
	         
	         System.out.println("카운트"+cnt+"아이디"+sellerid);
	         return cnt;

	   }

	   
	   
}
