<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Lista de Productos</title>
</head>
<body>
	<h3 style="text-align: center" class="m-3">Listado de productos</h3>

	<div class="container" >
		<table class="table table-hover table-striped">
			<tr>
				<td>Nombre producto</td>
				<td>Precio</td>
				<td>Acciones</td>
			</tr>
            <c:forEach var="prod" items="${sessionScope.listaProd}">
            				<tr>
            				    <td>Hola mundo</td>
            					<td><c:out value="${prod.nombre }"></c:out></td>
            					<td><c:out value="${prod.precio }"></c:out></td>
            					<td><a
            						href="/ProductoWeb8/ProductEliminarServlet?id=${prod.id }"
            						class="link-danger link-offset-2 link-underline-opacity-25 link-underline-opacity-100-hover"
            						>Eliminar</a>
            						<a
            						href="/ProductoWeb8/ProductEditServlet?id=${prod.id }&nombre=${prod.nombre}&precio=${prod.precio}"
            						class="link-danger link-offset-2 link-underline-opacity-25 link-underline-opacity-100-hover"
            						>Actualizar</a></td>
            				</tr>
            			</c:forEach>
		</table>
	</div>
</body>
</html>