<%--
  Created by IntelliJ IDEA.
  User: Marcos_Riarte
  Date: 31/7/2023
  Time: 12:48
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Resultado de la busqueda</title>
</head>

<body>
 El proveedor es: ${factura.supplier.nombre}
<br><br>
 Con los articulos:
<g:each in="${factura.itemList}" status="i" var="item">
    <tr>
        SKU:
        <td>${item?.sku}</td>

        <br><br>
        codigoBarras:
        <td>${item?.codigoBarras}</td>
        <br><br>
        Precio:
        <td>${item?.precio}</td>
         $
         <br><br>
</g:each>
</body>
</html>