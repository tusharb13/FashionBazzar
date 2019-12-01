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
	<form action="<c:url value ="/insertCategory"/>" method="post">
		<table>
			<tr>
				<td>Category Name</td>
				<td><input type = "text" name="cname"></td>
			</tr>
			<tr>
				<td>Category Description</td>
				<td><input type = "text" name="catDesc"></td>
			</tr>
			<tr>	
				<center>
				<td colspan="2">
				<input type="submit" value="SUMBIT"/>
				</center>
			</tr>
		</table>
	</form>
	<table>
		<tr>
			<td>Category ID</td>
			<td>Category Name</td>
			<td>Category Desc</td>
			<td>Operation</td>
		</tr>
		<c:forEach items= "${categoryList }" var="category">
		<tr>
			<td>${category.categoryId }</td>
			<td>${category.categoryName }</td>
			<td>${category.categoryDesc }</td>
			<td>
				<a href="<c:url value="/deleteCategory/${category.categoryId }"/>">Delete</a>
				<a href="<c:url value="/editCategory/${category.categoryId }"/>">Edit</a> 
			</td>
		</tr>
		</c:forEach>
	</table>
</body>
</html>