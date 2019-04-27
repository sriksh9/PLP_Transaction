<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form action="/addOrder">
		<label for="order_id">Order ID</label>
		<input type="text" name="order_id"><br>
		<label for="customer_id">Customer ID</label>
		<input type="text" name="customer_id"><br>
		
		<label for="product_id">Product ID</label>
		<input type="text" name="product_id"><br>
		<label for="total_price">Total Price</label>
		<input type="text" name="total_price"><br>
		<label for="shipping_address">Shipping Address</label>
		<input type="text" name="shipping_address"><br>
		<label for="order_amount">Order Amount</label>
		<input type="text" name="order_amount"><br>
		<input type="submit"><br>
	</form>

</body>
</html>