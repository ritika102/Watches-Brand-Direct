package com.WatchesBrandDirect.Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.WatchesBrandDirect.dao.CartDao;
import com.WatchesBrandDirect.model.Cart;

@Service
public class CartServiceImpl implements CartService{
	@Autowired
private CartDao cartDao;
	public Cart getCart(int cartId) {
		return cartDao.getCart(cartId);
	}

}