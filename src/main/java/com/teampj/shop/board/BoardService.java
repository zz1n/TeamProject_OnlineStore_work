package com.teampj.shop.board;

import java.util.ArrayList;

public interface BoardService {

	BoardDTO usereareview(int bnum);
	
	int userreviewsave(String ocode, String bname, String bcont);

	ArrayList<BoardDTO> userreviewlist(String string, int btype);


}