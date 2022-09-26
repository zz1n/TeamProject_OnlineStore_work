package com.teampj.shop.list;

import java.util.ArrayList;

public interface ListService {

	ArrayList<ListDTO> usercheck(String string, int bcode);

	ListDTO usertoseller(String ocode);

}