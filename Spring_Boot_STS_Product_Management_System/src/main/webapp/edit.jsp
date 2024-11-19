<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<center><h1>EDIT DATA</h1></center>
</head>
<body>

<form action="update">
<table border="1" align="center">

   <input type="hidden" name="productId" value="${data.productId}">
   
   <tr>
   <td>ProductName :</td>  
    <td><input type="text" name="productName" value="${data.productName}"></td>
 </tr>
 <tr>
    <td>ProductDescription :</td>
    <td><input type="text" name="productDescription" value="${data.productDescription}"></td>
 </tr>
 <tr>
    <td>ProductQuantity :</td>
    <td><input type="text" name="productQuantity" value="${data.productQuantity}"></td>
 </tr>
 <tr>
    <td>ProductPrice :</td>
    <td><input type="number" name="productPrice" value="${data.productPrice}"></td>
 </tr>
 <tr>
    <td>SupplierId :</td>
    <td><input type="number" name="s.supplierId" value="${data.s.supplierId}"></td>
 </tr>
 <tr>
    <td>SupplierName :</td>
    <td><input type="text" name="s.supplierName" value="${data.s.supplierName}"></td>
 </tr>
 <tr>
    <td>SupplierContact :</td>
    <td><input type="number" name="s.supplierContact" value="${data.s.supplierContact}"></td>
 </tr>
    
 <tr>
    <td><input type="submit" value="UPDATE" color="blue"></td>
 </tr>
    

</table>

</form>
</body>
</html>