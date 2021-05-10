<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<jsp:include page="../templates/header.jsp"></jsp:include>
	<main class="container mt-6">
		<div class="columns is-centered">
			<div class="column is-6">
				<h1 class="title">Consolas Agregadas</h1>
					<!--  <div class="content">
						<ul>
							<c:forEach var="aver" items="${ver}">
								<li>${aver}</li>
							</c:forEach>
						</ul>
					</div>-->
				<table class="table is-fullwidth is-bordered is-hoverable is-striped">
    			<thead class="has-background-primary">
    				<tr>
    					<th>Nombre</th>
    					<th>Marca</th>
    					<th>Año lanzamiento</th>
    					<th>Acciones</th>
    				</tr>
    			</thead>
    			<tbody>
    			<c:forEach var="consola" items="${consolas}" >
    				<tr>
    					<td> ${consola.nombre}</td>
    					<td> ${consola.marca}</td>
    					<td>${consola.anioLanzamiento}</td>
    					<td>
    						<a href="VerConsolaController.do?nombreEliminar=${consola.nombre}"
    						class="has-text-danger"> Eliminar</a>
    					</td>
    				</tr>
    			</c:forEach>
    			</tbody>
    		
    		
    		</table>
			</div>
		</div>
	</main>
</body>
</html>>