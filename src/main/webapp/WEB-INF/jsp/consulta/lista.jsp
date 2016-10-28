<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<c:import url="/WEB-INF/jsp/cabecalho.jsp" />
<c:import url="/WEB-INF/jsp/rodape.jsp" />

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Pesquisa de Consultas</title>
</head>

<body>

<div id="page-wrapper">
<div class="row">
<!-- <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 table-responsive consultaform"> -->
	
	<div class="col-sm-12  col-md-12  table-responsive consultaform">
		<div class="col-md-3">
			<div class="row">
				<h2>Consultas:</h2>
				<form action="#" method="get">
					<div class="input-group">
						<!-- USE TWITTER TYPEAHEAD JSON WITH API TO SEARCH -->
						<input class="form-control" id="system-search" name="q"
							placeholder="Pesquisar" required> <span
							class="input-group-btn">
							<button type="submit" class="btn btn-default">
								<i class="glyphicon glyphicon-search"></i>
							</button>
						</span>
					</div>
				</form>
			</div>
		</div>
		<form class="clienteform ">
			<table class=" table table-list-search table-hover table-condensed">
				<thead>
					<tr>
						<th>Cod:</th>
						<th>Nome:</th>
						<th>Data:</th>
						<th>Horario:</th>
						<th>Consulta:</th>
						<th>Receita:</th>

					</tr>
				</thead>


				<tbody id="myTable">
					<c:forEach items="${consultas}" var="consulta">
						<tr class="">
							<td>${consulta.codigo}</td>
							<td>${consulta.cliente.nome}</td>
							<%-- <td pattern ="dd/MM/yyyy">${consulta.dataconsulta}</td> --%>
							<td>${consulta.dataconsulta}</td>
							<td>${consulta.horaconsulta}</td>


							<td><a
								href="<c:url value='/consulta/editar/${consulta.codigo}'/>">
									Editar</a></td>

							<td><a
								href="<c:url value='/consulta/receita/${consulta.codigo}'/>">
									receita</a></td>

						</tr>




					</c:forEach>
				</tbody>
			</table>
		</form>
		<a href="<c:url value='/consulta/novo'/>"><button
				class="btn btn-md btn-primary">Nova</button></a>



		<div class="col-md-12 text-center">
			<ul class="pagination pagination-sm" id="myPager"></ul>

		</div>



	</div>
	</div>
	</div>
</body>
