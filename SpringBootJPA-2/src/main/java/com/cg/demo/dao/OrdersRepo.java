package com.cg.demo.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.cg.demo.model.Order;
@Repository
public interface OrdersRepo extends JpaRepository<Order, Long>{
//	@Query("select o from OrdersInfo o ORDER BY o.order_id DESC ")
//	public Order getLatestOrder();
	
	
	
	
}
