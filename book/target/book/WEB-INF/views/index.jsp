<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <c:forEach items="${listP}" var="p">
        <h5>Sale</h5>
        
        <h4>${p.tenSach}</h4>
        <h4>Giá : ${p.giaSach}$</h4>
    </c:forEach>
    
</body>
</html>
