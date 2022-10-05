package com.teampj.shop.order;

import java.util.ArrayList;

import com.teampj.shop.TotalDTO;

public interface OrderService {

	ArrayList<OrderDTO> orderlist(String id, int stnrd);

	TotalDTO orderdetail(String string, String ocode);

}