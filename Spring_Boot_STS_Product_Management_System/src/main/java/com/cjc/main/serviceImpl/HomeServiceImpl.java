package com.cjc.main.serviceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cjc.main.model.Product;
import com.cjc.main.repositoryI.HomeRepository;
import com.cjc.main.serviceI.HomeService;

@Service
public class HomeServiceImpl implements HomeService {

	@Autowired
	HomeRepository hr;
	
	@Override
	public void saveData(Product p) {
		hr.save(p);
	}

	@Override
	public Iterable<Product> displayAll() {
		
		return hr.findAll();
	}

	@Override
	public void deleteProduct(Product p) {
		hr.delete(p);
		
	}

	@Override
	public Product editProduct(int productId) {
		
		return hr.findAllByProductId(productId);
	}

	

}
