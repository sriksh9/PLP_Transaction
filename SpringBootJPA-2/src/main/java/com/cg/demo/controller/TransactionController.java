package com.cg.demo.controller;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cg.demo.dao.OrdersRepo;
import com.cg.demo.dao.TransactionRepo;
import com.cg.demo.model.Order;
import com.cg.demo.model.Transaction;

@Controller
public class TransactionController {
	DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy/MM/dd HH:mm:ss");
	
	@Autowired
	TransactionRepo repo1;
	
	@Autowired
	OrdersRepo repo2;
	
	
	@RequestMapping("/")
	public String home() {
		return "home.jsp";
	}
	
	@RequestMapping("/addTransaction")
	public String addTransaction(Transaction transaction) {
		LocalDateTime now = LocalDateTime.now();
		transaction.setDate_time(dtf.format(now));
		List<Order> ol = repo2.findAll();
		System.out.println(ol);
		//transaction.setOrder(repo2.);
		//System.out.println(transaction);
		//transaction.setPayment_method("COD");
		List<Order> allOrders=repo2.findAll();
		int latestOrderId = (allOrders.size()-1);
		Order latestOrder = allOrders.get(latestOrderId);
		transaction.setOrder(latestOrder);
		
//		transaction.setOrder(repo2.getLatestOrder());
		//transaction.getOrder().getOrder_id();
		System.out.println(transaction);
		repo1.save(transaction);
		return "home.jsp";
	}
	
	@RequestMapping("/addOrder")
	public String addOrder(Order order) {
		LocalDateTime now = LocalDateTime.now();
		order.setDate_time(dtf.format(now));
		
		repo2.save(order);
		return "Order.jsp";
	}
}
