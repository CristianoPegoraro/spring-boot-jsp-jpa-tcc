<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:import url="/WEB-INF/jsp/cabecalho.jsp"/>
<c:import url="/WEB-INF/jsp/rodape.jsp"/>

<%-- <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">

	${mensagem}
	<ul>
		<c:forEach items="${clientes}" var="cliente">
			<li><a href="/cliente/editar/${cliente.codigo}">${cliente.nome}</a></li>
		</c:forEach>
	</ul>
	<a href="/cliente/novo">Novo</a>
	</div>
 --%>

 <head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Pesquisa de Clientes</title>
</head>

<body>
	<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 table-responsive clienteform">
		<div class="col-md-3">
			<div class="row">
				<h2>Clientes:</h2>
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
		<form class="clienteform">
			<table class=" table table-list-search table-hover table-condensed">
				<thead>
					<tr>
						<th>Cod:</th>
						<th>Nome:</th>
						<th>Cpf:</th>
						<th>E-mail:</th>
						<th>Editar</th>
						<th>Excluir</th>
					</tr>
				</thead>


				<tbody id="myTable">
					<c:forEach items="${clientes}" var="cliente">
						<tr class="">
							<td>${cliente.codigo}</td>
							<td>${cliente.nome}</td>
							<td>${cliente.cpf}</td>
							<td>${cliente.email}</td>
							<td><a
								href="<c:url value='/cliente/editar/${cliente.codigo}'/>">
									Editar</a></td>
							<td><a
								href="<c:url value='/cliente/excluir/${cliente.codigo}'/>">
									Excluir </a></td>


						</tr>
					</c:forEach>
				</tbody>
			</table>
		</form>


		<%-- <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">

	${mensagem}
	<ul>
		<c:forEach items="${sexos}" var="sexo">
			<li><a href="/cliente/editar/${sexos.codigo}">${sexo.nome}</a></li>
		</c:forEach>
	</ul>
	
	</div> --%>

		<%-- <a href="<c:url value='/sistema'/>"><button
				class="btn btn-success">Voltar</button></a> --%>
				
				<a href="<c:url value='/cliente/novo'/>"><button
				class="btn btn-md btn-primary">Novo</button></a>
				
				
				
				

		<div class="col-md-12 text-center">
			<ul class="pagination pagination-sm" id="myPager"></ul>

		</div>



	</div>
	
	
</body>