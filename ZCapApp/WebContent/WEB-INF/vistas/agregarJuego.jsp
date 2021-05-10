<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<jsp:include page="../templates/header.jsp"></jsp:include>
	<main class="container mt-6">
		<c:if test="${mensaje != null}">
		<div class="columns is-centered">
			<div class="column is-6">
				<div class="notification is-primary">
					<p>${mensaje}</p>
				</div>
			</div>
		</div>
		</c:if>
		<c:if test="${errores != null }">
			<div class="columns is-centered mb-6">
				<div class="column is-6">
					<div class="notification is-danger">
						<h6>Existen errores en el formulario</h6>
					<div class="content">
						<ul>
							<c:forEach var="error" items="${errores}">
								<li>${error}</li>
							</c:forEach>
						</ul>
					</div>
				</div>
				</div>
			</div>
		</c:if>
		<div class="columns is-centered">
			<div class="column is-6">
			<c:if test="${consolas.size() > 0}">
				<form method="POST" action="AgregarJuegoController.do">
					<div class="card">
						<div class="card-header has-background-warning">
							<span class="card-header-title has-text-centered is-centered">Agregar Juego</span>
						</div>
						<div class="card-content">
							<div class="field">
								<label class="label" for="nombre-txt">Nombre</label>
								<div class="control">
									<input type="text" class="input" id="nombre-txt" name="nombre-txt" />
								</div>
							</div>
							<div class="field">
								<label class="label" for="descripcion-txt">Descripción</label>
								<div class="control">
									<textarea class="textarea" placeholder="ingrese su texto" id="descripcion-txt" name="descripcion-txt"></textarea>
								</div>
							</div>
							<div class="field">
								<label class="label" for="consola-select">Consola</label>
								<div class="control">
									<div class="select">
										<select name="consola-select" id="consola-select">
											<c:forEach items="${consolas}" var="consola">
											<option value="${consola.nombre}">${consola.nombre}</option>
											</c:forEach>
										</select>
									</div>
								</div>
							</div>
							
						<div class="field">
							<label class="label" for="apto-radio">Apto para niños?</label>
							<div class="control">
								<label class="radio"> <input type="radio" name="apto-radio" value="si">
									si
								</label> <label class="radio"> <input type="radio" name="apto-radio" checked value="no">
									No
							</label>
							</div>
						</div>
						<div class="field">
								<label class="label" for="precio-txt">Precio</label>
								<div class="control">
									<input type="number" class="input" name="precio-txt" id="precio-txt"/>
								</div>
						</div>
						<div class="field">
							<label class="label" for="fecha-txt">Fecha Lanzamiento</label>
								<div class="control">
									<input type="date" class="input" id="fecha-txt" name="fecha-txt" />
								</div>
						</div>
						</div>
						<div class="card-footer has-text-centered">
							<div class="card-footer-item">
								<button type="submit" class="button is-primary">Registrar</button>
							</div>
						</div>
					</div>
				</form>
				</c:if>
				<c:if test="${consolas.size() == 0 }">
					<div class="notification is-link">
						<p>Para poder ingresar un juego requiere ingresar al menos una consola </p>
						<p>puede ingresar una <a href="AgregarConsolaController.do"> aqui</a></p>
					</div>
				</c:if>
			</div>
		</div>
	</main>
</body>
</html>