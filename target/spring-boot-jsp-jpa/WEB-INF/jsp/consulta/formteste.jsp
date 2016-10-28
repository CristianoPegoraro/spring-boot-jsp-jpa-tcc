<%-- <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>


<c:import url="/WEB-INF/jsp/cabecalho.jsp" />
<c:import url="/WEB-INF/jsp/rodape.jsp" />



<!-- <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main"> -->
<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
	<form class=" consultaform" action="/consulta/" method="post">
		<h3>Cadastro de Clientes:</h3>
		<div class="form-group">
			<div class="row">
								<input type="hidden" name="codigo" id="codigo"
								value="${consulta.codigo}" readonly="readonly" />
								<form:errors path="consulta.codigo" />


							<div class="form-group col-xs-12 col-sm-3 col-md-2 col-lg-2">
								<label class="col-md-12 control-label" for="consulta.cliente">
									Codigo: </label>
								<div class="col-xs-12">
									<input name="cliente" type="text" maxlength="11"
										placeholder="Seu codigo" class="form-control input-md"
										value="${consulta.cliente.codigo}">
									<form:errors path="consulta.cliente.codigo" />
								</div>

							</div>


							<div class="form-group col-xs-12 col-sm-9 col-md-4 col-lg-4">
								<label class="col-md-12 control-label" for="consulta.cliente">
									Cliente:</label>
								<div class="col-xs-12">
									<input name="cliente" type="text" readonly="true"
										maxlength="11" placeholder="Seu codigo"
										class="form-control input-md" value="${consulta.cliente.nome}">
									<form:errors path="consulta.cliente.nome" />
								</div>

							</div>
							<div class="form-group col-xs-12 col-sm-6 col-md-3 col-lg-3">
								<label class="col-md-12 control-label" for="dataconsulta">Data:</label>
								<div class="col-xs-12" >
									<input name="dataconsulta" type="date" id="dataconsulta"
										class="form-control input-md" value="${consulta.dataconsulta}">
									<form:errors path="consulta.dataconsulta" />
								</div>

							</div>
							
							<div class="form-group col-xs-12 col-sm-6 col-md-3 col-lg-3">
					<label class="col-md-12 control-label" for="consulta.horaconsulta">Hora:</label>
					<div class="col-xs-12">
						<input name="horaconsulta" type="time" id="horaconsulta"
							placeholder="Hora da consulta" class="form-control input-md"
							value="${consulta.horaconsulta}">
						<form:errors path="consulta.horaconsulta" />
					</div>

				</div>






			</div>
		</div>

		<hr />



		<input class="btn btn-md btn-primary" type="submit" value="salvar" />



		<!-- <button class="btn btn-md btn-primary" type="submit" value="Salvar">Salvar</button>  -->
		<a class="btn btn-md btn-primary"
			href="/consulta/delete/${consulta.codigo}">Excluir</a>





	</form> --%>