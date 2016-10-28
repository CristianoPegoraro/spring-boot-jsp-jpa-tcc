<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<c:import url="/WEB-INF/jsp/cabecalho.jsp" />
<c:import url="/WEB-INF/jsp/rodape.jsp" />
<link href="/css/consulta.css" rel="stylesheet">
<script src="/js/consulta.js"></script>

<script language="Javascript1.2">
	
	
  
  function printpage() {
  window.print();
  }
  


</script>

<!-- <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main"> -->
<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">

	<form role="form" class=" consultaform" action="/consulta/"
		method="post">


		<div class="col-xs-12">
			<div class="col-md-12">
				<h3>Receita</h3>
				<div class="form-group">
					<div class="row">

						<input type="hidden" name="codigo" id="codigo"
							value="${consulta.codigo}" readonly="readonly" />

						<div class="form-group col-xs-12 col-sm-9 col-md-4 col-lg-4">
							<label class="col-md-12 control-label" for="consulta.cliente">
								${consulta.cliente.nome}</label>
							<div class="col-xs-12">
								<input name="cliente" type="text" readonly="true" maxlength="11"
									placeholder="Seu codigo" class="form-control input-md"
									value="${consulta.cliente.nome}">
								<form:errors path="consulta.cliente.nome" />
							</div>

						</div>


						<div class="col-xs-12 col-sm-6 col-md-3 col-lg-3">

							<label class="col-sm-12 control-label" for="efs_od">Efs:</label>

							<div class="form-group col-xs-12 col-sm-12 col-md-12 col-lg-12">
								<label class="col-md-12 control-label" for="efs_od">OD:</label>
								<div class="col-xs-12">
									<input name="efs_od" type="text" id="efs_od" maxlength="14"
										class="form-control input-md" value="${consulta.efs_od}">
									<form:errors path="consulta.efs_od" />
								</div>
							</div>


							<div class="form-group col-xs-12 col-sm-12 col-md-12 col-lg12">
								<label class="col-md-12 control-label" for="efs_oe">OE:</label>
								<div class="col-xs-12">
									<input name="efs_oe" type="text" id="efs_oe" maxlength="14"
										class="form-control input-md" value="${consulta.efs_oe}">
									<form:errors path="consulta.efs_oe" />
								</div>
							</div>

						</div>

						<div class="col-xs-12 col-sm-6 col-md-3 col-lg-3">

							<label class="col-sm-12 control-label" for="cil_od">cil:</label>

							<div class="form-group col-xs-12 col-sm-12 col-md-12 col-lg-12">
								<label class="col-md-12 control-label" for="cil_od">OD:</label>
								<div class="col-xs-12">
									<input name="cil_od" type="text" id="cil_od" maxlength="14"
										class="form-control input-md" value="${consulta.cil_od}">
									<form:errors path="consulta.cil_od" />
								</div>
							</div>


							<div class="form-group col-xs-12 col-sm-12 col-md-12 col-lg12">
								<label class="col-md-12 control-label" for="cil_oe">OE:</label>
								<div class="col-xs-12">
									<input name="cil_oe" type="text" id="cil_oe" maxlength="14"
										class="form-control input-md" value="${consulta.cil_oe}">
									<form:errors path="consulta.cil_oe" />
								</div>
							</div>

						</div>

						<div class="col-xs-12 col-sm-6 col-md-3 col-lg-3">

							<label class="col-sm-12 control-label" for="eixo_od">Eixo:</label>

							<div class="form-group col-xs-12 col-sm-12 col-md-12 col-lg-12">
								<label class="col-md-12 control-label" for="eixo_od">OD:</label>
								<div class="col-xs-12">
									<input name="eixo_od" type="text" id="eixo_od" maxlength="14"
										class="form-control input-md" value="${consulta.eixo_od}">
									<form:errors path="consulta.eixo_od" />
								</div>
							</div>


							<div class="form-group col-xs-12 col-sm-12 col-md-12 col-lg12">
								<label class="col-md-12 control-label" for="eixo_oe">OE:</label>
								<div class="col-xs-12">
									<input name="eixo_oe" type="text" id="eixo_oe" maxlength="14"
										class="form-control input-md" value="${consulta.eixo_oe}">
									<form:errors path="consulta.eixo_oe" />
								</div>
							</div>

						</div>

						<div class="col-xs-12 col-sm-6 col-md-3 col-lg-3">

							<label class="col-sm-12 control-label" for="add_od">Add:</label>

							<div class="form-group col-xs-12 col-sm-12 col-md-12 col-lg-12">
								<label class="col-md-12 control-label" for="add_od">OD:</label>
								<div class="col-xs-12">
									<input name="add_od" type="text" id="add_od" maxlength="14"
										class="form-control input-md" value="${consulta.add_od}">
									<form:errors path="consulta.add_od" />
								</div>
							</div>


							<div class="form-group col-xs-12 col-sm-12 col-md-12 col-lg12">
								<label class="col-md-12 control-label" for="add_oe">OE:</label>
								<div class="col-xs-12">
									<input name="add_oe" type="text" id="add_oe" maxlength="14"
										class="form-control input-md" value="${consulta.add_oe}">
									<form:errors path="consulta.add_oe" />
								</div>
							</div>

						</div>

						<div class="col-xs-12 col-sm-6 col-md-3 col-lg-3">

							<label class="col-sm-12 control-label" for="prisma_od">Prisma:</label>

							<div class="form-group col-xs-12 col-sm-12 col-md-12 col-lg-12">
								<label class="col-md-12 control-label" for="add_od">OD:</label>
								<div class="col-xs-12">
									<input name="prisma_od" type="text" id="prisma_od"
										maxlength="14" class="form-control input-md"
										value="${consulta.prisma_od}">
									<form:errors path="consulta.prisma_od" />
								</div>
							</div>



							<div class="form-group col-xs-12 col-sm-12 col-md-12 col-lg12">
								<label class="col-md-12 control-label" for="prisma_oe">OE:</label>
								<div class="col-xs-12">
									<input name="prisma_oe" type="text" id="prisma_oe"
										maxlength="14" class="form-control input-md"
										value="${consulta.prisma_oe}">
									<form:errors path="consulta.prisma_oe" />
								</div>
							</div>

						</div>





					</div>
				</div>



				<button class="btn btn-primary nextBtn btn-lg pull-right"
					type="button">Proximo</button>
			</div>
		</div>









	</form>




</div>


