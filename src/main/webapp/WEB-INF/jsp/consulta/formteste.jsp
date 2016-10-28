<br>
		<h3>Consulta</h3>
		<br>
		<br>
	<div class="stepwizard">
		<div class="stepwizard-row setup-panel">
			<div class="stepwizard-step">
				<a href="#step-1" type="button" class="btn btn-primary btn-circle">1</a>
				<p>Consulta</p>
				
			</div>
			<div class="stepwizard-step">
				<a href="#step-2" type="button" class="btn btn-default btn-circle">2</a>
				<p>Procedimento</p>
			</div>
			<div class="stepwizard-step">
				<a href="#step-3" type="button" class="btn btn-default btn-circle">3</a>
				<p>Finalização</p>
			</div>
		</div>
	</div>

	
	
	<form role="form" class=" consultaform" action="/consulta/"
		method="post">

		
		
		<div class="row setup-content" id="step-1">
		
			<div class="col-xs-12">
				<div class="col-md-12">
				 <h3> </h3> 
					<div class="form-group">
						<div class="row">

							<input type="hidden" name="codigo" id="codigo"
								value="${consulta.codigo}" readonly="readonly" />

				
							<div class="form-group col-xs-12 col-sm-3 col-md-2 col-lg-2">
								<label class="col-md-12 control-label" for="consulta.cliente">
									Codigo: </label>
								<div class="col-xs-12">
									<input name="cliente" type="text" maxlength="11"
										placeholder="Seu codigo" class="form-control input-md"
										value="${consulta.cliente.codigo}">
									<form:errors path="consulta.cliente" />
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
								<div class="col-xs-12">
									<input name="dataconsulta" type="date" id="dataconsulta"
										class="form-control input-md" value="${consulta.dataconsulta}">
									<form:errors path="consulta.dataconsulta" />
								</div>

							</div>

							<div class="form-group col-xs-12 col-sm-6 col-md-3 col-lg-3">
								<label class="col-md-12 control-label"
									for="consulta.horaconsulta">Hora:</label>
								<div class="col-xs-12">
									<input name="horaconsulta" type="time" id="horaconsulta"
										placeholder="Hora da consulta" class="form-control input-md"
										value="${consulta.horaconsulta}">
									<form:errors path="consulta.horaconsulta" />
								</div>

							</div>

							<div class="form-group col-xs-12 col-sm-12 col-md-12 col-lg-12">
								<label class="col-md-12 control-label" for="motivoconsulta">Motivo
									da Consulta:</label>
								<div class="col-xs-12">
									<textarea name="motivoconsulta" type="text"
										class="form-control" rows="3">${consulta.motivoconsulta}</textarea>
									<form:errors path="consulta.motivoconsulta" />
								</div>
							</div>



							


					



						</div>
					
					
					</div>

<!-- 
					<button class="btn btn-primary nextBtn btn-lg pull-right" 
						type="button">Proximo</button> --> 
						
					<button class="btn btn-success btn-lg pull-right" type="submit"
						value="salvar">Salvar</button>

					 <a class="btn btn-md btn-primary"
						href="/consulta/delete/${consulta.codigo}">Excluir</a>
						
			
				
						
				</div>
			</div>
		</div>


		<div class="row setup-content" id="step-2">
		
		
			<div class="col-xs-12">
				<div class="col-md-12">
					<h3> </h3>
					<div class="form-group">
						<div class="row">

							
							<label class="col-xs-12 col-md-12 control-label" for="lesometria">Lesometria:</label>

							<div class="form-group col-xs-12 col-sm-6 col-md-6 col-lg-6">
								<label class="col-md-12 control-label" for="lesometria_od">OD:</label>
								<div class="col-xs-12">
									<input name="lesometria_od" type="text" id="lesometria_od"
										maxlength="14" class="form-control input-md tipo1"
										value="${consulta.lesometria_od}">
									<form:errors path="consulta.lesometria_od" />
								</div>
							</div>



							<div class="form-group col-xs-12 col-sm-3 col-md-3 col-lg-3">
								<label class="col-md-12 control-label" for="lesometria_od_add">ADD</label>
								<div class="col-xs-12">
									<input name="lesometria_od_add" type="text"
										id="lesometria_od_add" maxlength="7"
										class="form-control input-md tipo2"
										value="${consulta.lesometria_od_add}">
									<form:errors path="consulta.lesometria_od_add" />
								</div>
							</div>

							<div class="form-group col-xs-12 col-sm-3 col-md-3 col-lg-3">
								<label class="col-md-12 control-label"
									for="lesometria_od_prisma">Prisma</label>
								<div class="col-xs-12">
									<input name="lesometria_od_prisma" type="text"
										id="lesometria_od_prisma" maxlength="14"
										class="form-control input-md tipo2"
										value="${consulta.lesometria_od_prisma}">
									<form:errors path="consulta.lesometria_od_prisma" />
								</div>
							</div>

							<div class="form-group col-xs-12 col-sm-6 col-md-6 col-lg-6">
								<label class="col-md-12 control-label" for="lesometria_oe">OE:</label>
								<div class="col-xs-12">
									<input name="lesometria_oe" type="text" id="lesometria_oe"
										maxlength="14" class="form-control input-md tipo1"
										value="${consulta.lesometria_oe}">
									<form:errors path="consulta.lesometria_oe" />
								</div>
							</div>



							<div class="form-group col-xs-12 col-sm-3 col-md-3 col-lg-3">
								<label class="col-md-12 control-label" for="lesometria_oe_add">ADD</label>
								<div class="col-xs-12">
									<input name="lesometria_oe_add" type="text"
										id="lesometria_oe_add" maxlength="6"
										class="form-control input-md tipo2"
										value="${consulta.lesometria_oe_add}">
									<form:errors path="consulta.lesometria_oe_add" />
								</div>
							</div>

							<div class="form-group col-xs-12 col-sm-3 col-md-3 col-lg-3">
								<label class="col-md-12 control-label"
									for="lesometria_oe_prisma">Prisma</label>
								<div class="col-xs-12">
									<input name="lesometria_oe_prisma" type="text"
										id="lesometria_oe_prisma" maxlength="6"
										class="form-control input-md tipo2"
										value="${consulta.lesometria_oe_prisma}">
									<form:errors path="consulta.lesometria_oe_prisma" />
								</div>
							</div>

							<div class="form-group col-xs-12 col-sm-12 col-md-12 col-lg-12">
								<label class="col-md-12 control-label" for="lesometria_obs">Observações:</label>
								<div class="col-xs-12">
									<textarea name="lesometria_obs" type="text"
										class="form-control" rows="3">${consulta.lesometria_obs}</textarea>
									<form:errors path="consulta.lesometria_obs" />
								</div>
							</div>
							
							
							
							
							<div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
							
								<label class="col-sm-12 control-label" for="lesometria_od">Refração
									AR:</label>

								<div class="form-group col-xs-12 col-sm-6 col-md-6 col-lg-6">
									<label class="col-md-12 control-label" for="refracao_od">OD:</label>
									<div class="col-xs-12">
									
										<input name="refracao_od" type="text" id="refracao_od"
											maxlength="14" class="form-control input-md tipo1"
											value="${consulta.refracao_od}">
										<form:errors path="consulta.refracao_od" />
									</div>
								</div>


								<div class="form-group col-xs-12 col-sm-6 col-md-6 col-lg-6">
									<label class="col-md-12 control-label" for="refracao_oe">OE:</label>
									<div class="col-xs-12">
										<input name="refracao_oe" type="text" id="refracao_oe"
											maxlength="14" class="form-control input-md tipo1"
											value="${consulta.refracao_oe}">
										<form:errors path="consulta.refracao_oe" />
									</div>
								</div>

							</div>

							<div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">

								<label class="col-sm-12 control-label"
									for="retinoscopia_estatica">Retinoscopia Estatica:</label>

								<div class="form-group col-xs-12 col-sm-6 col-md-6 col-lg-6">
									<label class="col-md-12 control-label"
										for="retinoscopia_estatica_od">OD:</label>
									<div class="col-xs-12">
										<input name="retinoscopia_estatica_od" type="text"
											id="retinoscopia_estatica_od" maxlength="14"
											class="form-control input-md tipo1"
											value="${consulta.retinoscopia_estatica_od}">
										<form:errors path="consulta.retinoscopia_estatica_od" />
									</div>
								</div>


								<div class="form-group col-xs-12 col-sm-6 col-md-6 col-lg-6">
									<label class="col-md-12 control-label"
										for="retinoscopia_estatica_oe">OE:</label>
									<div class="col-xs-12">
										<input name="retinoscopia_estatica_oe" type="text"
											id="retinoscopia_estatica_oe" maxlength="14"
											class="form-control input-md tipo1"
											value="${consulta.retinoscopia_estatica_oe}">
										<form:errors path="consulta.retinoscopia_estatica_oe" />
									</div>
								</div>


							</div>


							<div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">

								<label class="col-sm-12 control-label" for="retinoscopia_mem_od">Retinoscopia
									MEM:</label>

								<div class="form-group col-xs-12 col-sm-6 col-md-6 col-lg-6">
									<label class="col-md-12 control-label"
										for="retinoscopia_mem_od">OD:</label>
									<div class="col-xs-12">
										<input name="retinoscopia_mem_od" type="text"
											id="retinoscopia_mem_od" maxlength="14"
											class="form-control input-md tipo1"
											value="${consulta.retinoscopia_mem_od}">
										<form:errors path="consulta.retinoscopia_mem_od" />
									</div>
								</div>


								<div class="form-group col-xs-12 col-sm-6 col-md-6 col-lg-6">
									<label class="col-md-12 control-label"
										for="retinoscopia_mem_oe">OE:</label>
									<div class="col-xs-12">
										<input name="retinoscopia_mem_oe" type="text"
											id="retinoscopia_mem_oe" maxlength="14"
											class="form-control input-md tipo1"
											value="${consulta.retinoscopia_mem_oe}">
										<form:errors path="consulta.retinoscopia_mem_oe" />
									</div>
								</div>

							</div>

							<div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">

								<label class="col-sm-12 control-label" for="retinoscopia_mem_od">Subjetivo:</label>

								<div class="form-group col-xs-12 col-sm-6 col-md-6 col-lg-6">
									<label class="col-md-12 control-label" for="subjetivo_od">OD:</label>
									<div class="col-xs-12">
										<input name="subjetivo_od" type="text" id="subjetivo_od"
											maxlength="14" class="form-control input-md tipo1"
											value="${consulta.subjetivo_od}">
										<form:errors path="consulta.subjetivo_od" />
									</div>
								</div>


								<div class="form-group col-xs-12 col-sm-6 col-md-6 col-lg-6">
									<label class="col-md-12 control-label" for="subjetivo_oe">OE:</label>
									<div class="col-xs-12">
										<input name="subjetivo_oe" type="text" id="subjetivo_oe "
											maxlength="14" class="form-control input-md tipo1"
											value="${consulta.subjetivo_oe}">
										<form:errors path="consulta.subjetivo_oe" />
									</div>
								</div>

							</div>


							



						</div>
					</div>

					
						
						
				</div>
			</div>
		</div>

		<div class="row setup-content" id="step-3">
			<div class="col-xs-12">
				<div class="col-md-12">
					<h3>Teste 3</h3>

<label class="col-sm-12 control-label" for="retinoscopia_mem_od">Receita:</label>

							<div class="col-xs-12 col-sm-6 col-md-3 col-lg-3">

								<label class="col-sm-12 control-label" for="efs_od">Efs:</label>

								<div class="form-group col-xs-12 col-sm-12 col-md-12 col-lg-12">
									<label class="col-md-12 control-label" for="efs_od">OD:</label>
									<div class="col-xs-12">
										<input name="efs_od" type="text" id="efs_od" maxlength="14"
											class="form-control input-md tipo2" value="${consulta.efs_od}">
										<form:errors path="consulta.efs_od" />
									</div>
								</div>


								<div class="form-group col-xs-12 col-sm-12 col-md-12 col-lg12">
									<label class="col-md-12 control-label" for="efs_oe">OE:</label>
									<div class="col-xs-12">
										<input name="efs_oe" type="text" id="efs_oe" maxlength="14"
											class="form-control input-md tipo2" value="${consulta.efs_oe}">
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
											class="form-control input-md tipo2" value="${consulta.cil_od}">
										<form:errors path="consulta.cil_od" />
									</div>
								</div>


								<div class="form-group col-xs-12 col-sm-12 col-md-12 col-lg12">
									<label class="col-md-12 control-label" for="cil_oe">OE:</label>
									<div class="col-xs-12">
										<input name="cil_oe" type="text" id="cil_oe" maxlength="14"
											class="form-control input-md tipo2" value="${consulta.cil_oe}">
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
											class="form-control input-md tipo3" value="${consulta.eixo_od}">
										<form:errors path="consulta.eixo_od" />
									</div>
								</div>


								<div class="form-group col-xs-12 col-sm-12 col-md-12 col-lg12">
									<label class="col-md-12 control-label" for="eixo_oe">OE:</label>
									<div class="col-xs-12">
										<input name="eixo_oe" type="text" id="eixo_oe" maxlength="14"
											class="form-control input-md tipo3" value="${consulta.eixo_oe}">
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
											class="form-control input-md tipo2" value="${consulta.add_od}">
										<form:errors path="consulta.add_od" />
									</div>
								</div>


								<div class="form-group col-xs-12 col-sm-12 col-md-12 col-lg12">
									<label class="col-md-12 control-label" for="add_oe">OE:</label>
									<div class="col-xs-12">
										<input name="add_oe" type="text" id="add_oe" maxlength="14"
											class="form-control input-md tipo2" value="${consulta.add_oe}">
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
											maxlength="14" class="form-control input-md tipo2"
											value="${consulta.prisma_od}">
										<form:errors path="consulta.prisma_od" />
									</div>
								</div>



								<div class="form-group col-xs-12 col-sm-12 col-md-12 col-lg12">
									<label class="col-md-12 control-label" for="prisma_oe">OE:</label>
									<div class="col-xs-12">
										<input name="prisma_oe" type="text" id="prisma_oe"
											maxlength="14" class="form-control input-md tipo2"
											value="${consulta.prisma_oe}">
										<form:errors path="consulta.prisma_oe" />
									</div>
								</div>

							</div>



					<div class="form-group col-xs-12 col-sm-12 col-md-12 col-lg-12">
						<label class="col-md-12 control-label" for="consulta.observacoes">Conduta:</label>
						<div class="col-xs-12">
							<textarea name="observacoes" type="text" class="form-control"
								rows="3">${consulta.observacoes}</textarea>
							<form:errors path="consulta.observacoes" />
						</div>
					</div>






					<button class="btn btn-success btn-lg pull-right" type="submit"
						value="salvar">Salvar</button>

					<!-- <button onclick="window.print();">Print this Page</button> -->

					<%-- 
					<button class="btn btn-success btn-lg pull-right" type="submit"
						href="/consulta/delete/${consulta.codigo}">Excluir</button>
 --%>

					<%-- <a class="btn btn-md btn-primary"
						href="/consulta/delete/${consulta.codigo}">Excluir</a>
 --%>



					<!--  <button class="btn btn-success btn-lg pull-right" type="submit" value="salvar"></button> -->
					<!-- <input class="btn btn-md btn-primary" type="submit" value="salvar" /> -->
				</div>
			</div>
		</div>










	</form>



