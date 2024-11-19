<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<center><h1>VIEW PRODUCT</h1></center>
<script type="text/javascript">
function addProduct()
{
	document.fn.action="addProduct.jsp";
	document.fn.submit();
}
function deleteProduct()
{
	alert("Delete Data")
	document.fn.action="delete";
	document.fn.submit();
}
function editProduct()
{
	document.fn.action="edit";
	document.fn.submit();
}
</script>
</head>
<body>
 <form name="fn">
  
   <table border="1" align="center">
   <tr>
     <th>Sr No</th>
     <th>ProductId</th>
     <th>ProductName</th>
     <th>ProductDescription</th>
     <th>ProductQuantity</th>
     <th>ProductPrice</th>
     <th>SupplierId</th>
     <th>SupplierName</th>
     <th>SupplierContact</th>
   </tr>
   
   <c:forEach items="${data}" var="p">
   
   <tr>
     <td><input type="radio" name="productId" value="${p.productId}"></td>
     <td>${p.productId}</td>
     <td>${p.productName}</td>
     <td>${p.productDescription}</td>
     <td>${p.productQuantity}</td>
     <td>${p.productPrice}</td>
     <td>${p.s.supplierId}</td>
     <td>${p.s.supplierName}</td>
     <td>${p.s.supplierContact}</td>
   
   </tr>
   </c:forEach>
   </table>
 <table border="1" align="center">
 
 <tr>
    <td><input type="button" value="EDIT" onClick="editProduct()"></td>
    <td><input type="button" value="DELETE" onClick="deleteProduct()"></td>
    <td><input type="button" value="ADD" onClick="addProduct()"></td>
 </tr>
 </table>
 
 </form>
</body>
</html>