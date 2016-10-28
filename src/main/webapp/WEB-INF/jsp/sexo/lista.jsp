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


	
	

	<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">

	${mensagem}
	<ul>
		<c:forEach items="${sexos}" var="sexo">
			<li>${sexo.codigo} ${sexo.nome}</li>
		</c:forEach>
	</ul>
	<a href="/cliente/novo">Novo</a>
	</div>
	

	
	</body>