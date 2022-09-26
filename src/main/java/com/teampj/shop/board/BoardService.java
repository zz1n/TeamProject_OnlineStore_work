package com.teampj.shop.board;

import java.util.ArrayList;

public interface BoardService {

	BoardDTO usereareview(String string, int bnum);
	
	int userreviewsave(String ocode, String bname, String bcont);

	ArrayList<BoardDTO> userreviewlist(String string, int btype);

	int userboarddel(String string, int bnum);

	BoardDTO userreviewupdateget(String string, int bnum);

	int userreviewupdateset(String string, String bnum, String bname, String bcont);

	int usertosellersave(String string, String bname, String bcont, String pcode);

	ArrayList<BoardDTO> usertolist(String string, int btype);

	ArrayList<BoardDTO> usertosellerout(int bnum);

	int usertositesave(String string, String bname, String bcont);
}