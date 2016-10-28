<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>


<c:import url="/WEB-INF/jsp/cabecalho.jsp" />
<c:import url="/WEB-INF/jsp/rodape.jsp" />



<!-- <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main"> -->
<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
	<form class=" clienteform" action="/cliente/" method="post">
		<h3>Cadastro de Clientes:</h3>
		<div class="form-group">
			<div class="row">

				<input type="hidden" name="codigo" id="codigo"
					value="${cliente.codigo}" readonly="readonly" />


				<div class="form-group col-xs-12 col-sm-12 col-md-6 col-lg-6">
					<label class="col-md-12 control-label" for="cliente.nome">Nome:</label>
					<div class="col-xs-12">
						<input name="nome" type="text" id="nome"
							required="Campo Obrigatorio" placeholder="Seu Nome"
							class="form-control input-md" value="${cliente.nome}">
						<form:errors path="cliente.nome" />
					</div>
				</div>




				<div class="form-group col-xs-12 col-sm-6 col-md-3 col-lg-3">
					<label class="col-md-4 control-label" for="cliente.cpf">CPF:</label>
					<div class="col-xs-12">


						<input name="cpf" type="text" pattern="\d{3}\.\d{3}\.\d{3}-\d{2}"
							id="cpf" maxlength="14" placeholder="000.000.000-00"
							required="Campo Obrigatorio" class="form-control input-md"
							value="${cliente.cpf}">
						<form:errors path="cliente.cpf" />
					</div>

				</div>

				<div class="form-group col-xs-12 col-sm-6 col-md-3 col-lg-3">
					<label class="col-md-4 control-label" for="cliente.rg"> RG:
					</label>
					<div class="col-xs-12">
						<input name="rg" type="text" id="rg" maxlength="11"
							placeholder="Seu RG" class="form-control input-md"
							required="Campo Obrigatorio" value="${cliente.rg}">
						<form:errors path="cliente.rg" />
					</div>
				</div>


				<div class="form-group col-xs-12 col-sm-6 col-md-3 col-lg-3">
					<label class="col-md-4 control-label" for="cliente.ocupacao">Ocupação:</label>
					<div class="col-xs-12">
						<input name="ocupacao" type="text" id="ocupacao"
							placeholder="Ocupacao - local de trabalo/setor"
							class="form-control input-md" value="${cliente.ocupacao}">
						<form:errors path="cliente.ocupacao" />
					</div>

				</div>

				<div class="form-group col-xs-12 col-sm-6 col-md-3 col-lg-3">
					<label class="col-md-12 control-label" for="cliente.datanasc">Nacimento:</label>
					<div class="col-xs-12">
						<input name="datanasc" type="date" id="datanasc"
							class="form-control input-md" value="${cliente.datanasc}">
						<form:errors path="cliente.datanasc" />
					</div>

				</div>




				<div class="form-group col-xs-12 col-sm-6 col-md-3 col-lg-3">
					<label class="col-md-4 control-label" for="cliente.telefone">Telefone:</label>
					<div class="col-xs-12">
						<input name="telefone" type="tel" id="telefone" maxlength="12"
							placeholder="49-3353-9955" pattern="\d{2}\-\d{4}\-\d{4}"
							class="form-control input-md" value="${cliente.telefone}">
						<form:errors path="cliente.telefone" />
					</div>
				</div>


				<div class="form-group col-xs-12 col-sm-6 col-md-3 col-lg-3">
					<label class="col-md-4 control-label" for="cliente.celular">Celular:</label>
					<div class="col-xs-12">
						<input name="celular" type="tel" id="celular" maxlength="12"
							placeholder="49-3353-9955" pattern="\d{2}\-\d{4}\-\d{4}"
							class="form-control input-md" value="${cliente.celular}">
						<form:errors path="cliente.telefone" />
					</div>
				</div>


				<div class="form-group col-xs-12 col-sm-12 col-md-6 col-lg-6">
					<label class="col-md-4 control-label" for="endereco">Endereço:</label>
					<div class="col-xs-12">
						<input name="endereco" type="text" id="endereco"
							placeholder="Rua,Bairro,Numero" class="form-control input-md"
							value="${cliente.endereco}">
						<form:errors path="cliente.endereco" />
					</div>

				</div>

				<div class="form-group col-xs-12 col-sm-6 col-md-3 col-lg-3">
					<label class="col-md-4 control-label" for="cidade">Cidade:</label>
					<div class="col-xs-12">
						<input name="cidade" type="text" id="cidade" placeholder="cidade"
							class="form-control input-md" value="${cliente.cidade}">
						<form:errors path="cliente.cidade" />
					</div>

				</div>


				<div class="form-group col-xs-12 col-sm-6 col-md-3 col-lg-3">
					<label class="col-md-12 control-label" for="cliente.email">E-mail:</label>
					<div class="col-xs-12">
						<input name="email" type="email" id="email" maxlength="30"
							placeholder="Endereço de E-mail" class="form-control input-md"
							value="${cliente.email}">
						<form:errors path="cliente.email" />
					</div>
				</div>


				<div class="form-group col-xs-12 col-sm12 col-md-12 col-lg-12">
					<label class="col-md-12 control-label" for="cliente.sexo">Sexo:</label>
					<select id="sexo" name="sexo" >
					<option value="${cliente.sexo.codigo}">Escolha um sexo</option>
					<c:forEach items="${sexos}" var="sexo">
						<option value="${sexo.codigo}"<c:if test="${cliente.sexo.codigo eq sexo.codigo}">selected="selected"</c:if>
           					> ${sexo.nome}        
       				 </option>
					</c:forEach>
					</select>
					<form:errors path="cliente.sexo" />
				</div>





				<div class="form-group col-xs-12 col-sm12 col-md-12 col-lg-12">
					<label class="col-md-12 control-label" for="cliente.observacoes">Observações:</label>
					<div class="col-xs-12">
						<textarea name="observacoes" type="text" class="form-control"
							rows="3">${cliente.observacoes}</textarea>
						<form:errors path="cliente.observacoes" />
					</div>
				</div>










			</div>
		</div>

		<hr />



		<input class="btn btn-md btn-primary" type="submit" value="salvar" />



		<!-- <button class="btn btn-md btn-primary" type="submit" value="Salvar">Salvar</button>  -->
		<a class="btn btn-md btn-primary"
			href="/cliente/delete/${cliente.codigo}">Excluir</a>





	</form>