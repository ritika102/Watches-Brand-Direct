package com.WatchesBrandDirect.Service;

import com.WatchesBrandDirect.model.Cart;
import com.WatchesBrandDirect.model.CartItem;

public interface CartItemService {
	void addCartItem(CartItem cartItem);

	CartItem getCartItem(int cartItemId);

	void removeCartItem(CartItem cartItem);

	void removeAllCartItems(Cart cart);



}
