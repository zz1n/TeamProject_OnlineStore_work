package com.teampj.shop.order;

import java.util.ArrayList;

public interface OrderService {

	ArrayList<OrderDTO> orderlist(String id, int stnrd);

	OrderDTO orderdetail(String string, String ocode);

	void ordercancel(String ocode, String string);

	void orderrefund(String ocode, String string);

	OrderDTO userorderchangeget(String string, String ocode);

	void userorderchangeset(String ocode, String ozipcode, String oaddress, String omemo);

}