<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="jstl"%>

<!DOCTYPE html>
<html lang="pt-br">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="icon" href="./assets/img/book-2-fill.svg" type="image/svg" />
<link rel="stylesheet" href="./assets/css/style.css" />
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link
	href="https://cdn.jsdelivr.net/npm/remixicon@2.5.0/fonts/remixicon.css"
	rel="stylesheet">
<title>Eagles Airlines | Passagens</title>
</head>
<body>
	<header class="header">

		<nav class="navbar col-12 position-fixed navbar-expand-lg navbar-dark"
			style="background-color: #0b0744; z-index: 999;">
			<div class="container-fluid col-11 m-auto">
				<a class="navbar-brand" href="index.html"> <img
					src="./assets/imagens/eagleslogo.PNG" alt="Bootstrap" width="150"
					height="70">
				</a>
				<button class="navbar-toggler" type="button"
					data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
					aria-controls="navbarSupportedContent" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				<jsp:include page="../../components/menu.jsp">
					<jsp:param name="home" value="./index.jsp" />
					<jsp:param name="passageiros" value="passageiro" />
					<jsp:param name="passagens" value="passagem" />
					<jsp:param name="pedidos" value="pedido" />
				</jsp:include>
			</div>
		</nav>
	</header>
	
	<main class="newsletter">
		<section class="container">

			<div class="p-4">
			<h1>Passagens</h1>
				<table class="table table-responsive table-hover">
					<thead class="table-dark">
						<tr>
							<th scope="col">Id passagem</th>
							<th scope="col">Quantidade</th>
							<th scope="col">Origem</th>
							<th scope="col">Destino</th>
							<th scope="col">Valor</th>
							<th scope="col">Numero do Pedido</th>
						</tr>
					</thead>
					<tbody>

						<jstl:forEach items="${listaPassagens}" var="psgm">
							<tr>
								<td>${psgm.id_passagem}</td>
								<td>${psgm.quantidade}</td>
								<td>${psgm.origem}</td>
								<td>${psgm.destino}</td>
								<td>${psgm.valor_passagem}</td>
								<td>${psgm.pedido.num_pedido}</td>
								<td>
									<div class="d-flex">
										<a href="passagem-edit?id_passagem=${psgm.id_passagem}"
											class="mx-1" title="Editar"> <i class="ri-file-edit-line"></i>
										</a> <a href="passagem-delete?id_passagem=${psgm.id_passagem}"
											class="mx-1" title="Cancelar"
											onclick="return confirm('Deseja excluir a passagem ${psgm.id_passagem}.')">
											<i class="ri-delete-bin-2-line"></i>
										</a>
									</div>
								</td>
							</tr>
						</jstl:forEach>

					</tbody>
				</table>
				<a href="passagem-getCreate" class="btn btn-primary mb-2 botao1">
					Cadastrar passagem </a>
			</div>
		</section>
	</main>
	<footer class="footer">
		<div class="footer_container">
			<div class="newsletter">
				<h1>Pensou que acabou? Clique em "Destino" e confira todos os
					nossos pacotes de viagem!</h1>
			</div>
			<div class="footer_content_container">
				<div class="footer_content">
					<div class="contact">
						<h1>Eagles Airlines, onde os sonhos ganham asas e a liberdade
							encontra seu destino!</h1>
						<p class="txt_md_white">kazuohirotokuta@aluno.recode.org.br</p>
					</div>
					<ul class="footer_links">
						<li>
							<h3 class="txt_lg_white">Menu</h3>
						</li>
						<li><a href="#" class="nav__link">Home</a></li>
						<li><a href="#" class="nav__link">Destino</a></li>
						<li><a href="#" class="nav__link">Promoções</a></li>
						<li><a href="#" class="nav__link">Contato</a></li>
					</ul>

				</div>
			</div>
		</div>
	</footer>
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.min.js"></script>
</body>
</html>