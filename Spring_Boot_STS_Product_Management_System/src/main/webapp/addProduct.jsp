<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<center><h1>ADD PRODUCT</h1></center>
</head>
<body>
    
 <form action="add" name="fn">
 
 <table border="1" align="center">
 
 <tr>
    <td>ProductId :</td>
    <td><input type="number" name="productId"></td>
 </tr>
 <tr>
    <td>ProductName :</td>  
    <td><input type="text" name="productName"></td>
 </tr>
 <tr>
    <td>ProductDescription :</td>
    <td><input type="text" name="productDescription"></td>
 </tr>
 <tr>
    <td>ProductQuantity :</td>
    <td><input type="text" name="productQuantity"></td>
 </tr>
 <tr>
    <td>ProductPrice :</td>
    <td><input type="number" name="productPrice"></td>
 </tr>
 <tr>
    <td>SupplierId :</td>
    <td><input type="number" name="s.supplierId"></td>
 </tr>
 <tr>
    <td>SupplierName :</td>
    <td><input type="text" name="s.supplierName"></td>
 </tr>
 <tr>
    <td>SupplierContact :</td>
    <td><input type="number" name="s.supplierContact"></td>
 </tr>
    
 <tr>
    <td><input type="submit" value="addProduct" color="blue"></td>
 </tr>
    
 </table>
 </form>
 
</body>
</html>