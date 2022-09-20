package com.teampj.shop.order;

import java.util.ArrayList;

public interface OrderService {

	ArrayList<OrderDTO> orderlist(String id, int stnrd);

}