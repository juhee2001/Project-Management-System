package com.cjc.main.repositoryI;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.cjc.main.model.Product;

@Repository
public interface HomeRepository extends CrudRepository<Product,Integer>
{
public Product findAllByProductId(int productId);
	
}
