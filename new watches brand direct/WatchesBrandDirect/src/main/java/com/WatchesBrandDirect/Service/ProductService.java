package com.WatchesBrandDirect.Service;

import java.util.List;

import com.WatchesBrandDirect.model.Product;

public interface ProductService{
Product saveProduct(Product product);
List<Product> getAllProducts();
Product getProductById(int id);
void deleteProduct(int id);
void updateProduct(Product product);

}