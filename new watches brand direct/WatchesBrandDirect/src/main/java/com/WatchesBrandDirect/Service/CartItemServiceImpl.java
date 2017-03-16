package com.WatchesBrandDirect.Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.WatchesBrandDirect.dao.CartItemDao;
import com.WatchesBrandDirect.model.CartItem;

@Service
public class CartItemServiceImpl implements CartItemService {
	@Autowired
private CartItemDao cartItemDao;
	public void addCartItem(CartItem cartItem) {
	  cartItemDao.addCartItem(cartItem);
		
	}

}

