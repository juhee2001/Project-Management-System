package com.cjc.main.serviceI;

import com.cjc.main.model.Product;

public interface HomeService {
public void saveData(Product p);

public Iterable<Product> displayAll();
public void deleteProduct(Product p);
public Product editProduct(int productId);
}
