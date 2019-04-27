package com.cg.demo.model;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;


@Entity
@Table(name="TransactionInfo")
public class Transaction {
	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "TransactionInfo")
	@SequenceGenerator(name="TransactionInfo", sequenceName = "transaction_id", allocationSize=50)
	private long transaction_id;
	@OneToOne(cascade = CascadeType.ALL)
	@NotNull
	@JoinColumn(name="order_id")
	private Order order;
//	private long order_id;
	private String coupon_id;
	private String status;
	private String date_time;
	private String payment_method;
	private double total_amount;
	public long getTransaction_id() {
		return transaction_id;
	}
	public void setTransaction_id(long transaction_id) {
		this.transaction_id = transaction_id;
	}
	
	

	public Order getOrder() {
		return order;
	}
	public void setOrder(Order order) {
		this.order = order;
	}
	/*public long getOrder_id() {
		return order_id;
	}
	public void setOrder_id(long order_id) {
		this.order_id = order_id;
	}*/
	public String getCoupon_id() {
		return coupon_id;
	}
	public void setCoupon_id(String coupon_id) {
		this.coupon_id = coupon_id;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getDate_time() {
		return date_time;
	}
	public void setDate_time(String date_time) {
		this.date_time = date_time;
	}
	public String getPayment_method() {
		return payment_method;
	}
	public void setPayment_method(String payment_method) {
		this.payment_method = payment_method;
	}
	
	public double getTotal_amount() {
		return total_amount;
	}
	public void setTotal_amount(double total_amount) {
		this.total_amount = total_amount;
	}
	/*@Override
	public String toString() {
		return "Transaction [transaction_id=" + transaction_id + ", order_id=" + order_id + ", coupon_id=" + coupon_id
				+ ", status=" + status + ", date_time=" + date_time + ", payment_method=" + payment_method
				+ ", total_amount=" + total_amount + "]";
	}*/
	
	
	
	@Override
	public String toString() {
		return "Transaction [transaction_id=" + transaction_id + ", order=" + order + ", coupon_id=" + coupon_id
				+ ", status=" + status + ", date_time=" + date_time + ", payment_method=" + payment_method
				+ ", total_amount=" + total_amount + "]";
	}
	
}
