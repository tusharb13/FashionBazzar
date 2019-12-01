<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form action="<c:url value ="/updateSupplier"/>" method="post">
		<table>
			<tr>
				<td>Supplier Id</td>
				<td><input type = "text" name="supId" value = "${supplier.supplierId }" readonly></td>
			</tr>
			<tr>
				<td>Supplier Name</td>
				<td><input type = "text" name="supName" value = "${supplier.supplierName }"></td>
			</tr>
			<tr>
				<td>Supplier Address</td>
				<td><input type = "text" name="supDesc" value = "${supplier.supplierAddress }"></td>
			</tr>
			<tr>	
				<center>
				<td colspan="2">
				<input type="submit" value="Update Supplier"/>
				</center>
			</tr>
		</table>
	</form>
	
</body>
</html>