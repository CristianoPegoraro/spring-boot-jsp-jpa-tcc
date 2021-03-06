<!DOCTYPE html>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html lang="pt-br">
<body>
<form action="/produto/" method="post">
	<input type="hidden" name="codigo" id="codigo" value="${produto.codigo}">
	<input type="text" name="nome" id="nome" value="${produto.nome}">
	<form:errors path="produto.nome" />
	<input type="text" name="valor" id="valor" value="${produto.valor}">
	<form:errors path="produto.valor" />
	<input type="submit" value="Salvar"/>
	<a class="button" href="/produto/delete/${produto.codigo}">Excluir</a>
	
	</form>
</body>
</html>