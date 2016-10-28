package br.com.optosistem.domain;

import java.time.LocalDate;
import java.time.LocalTime;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

import org.springframework.format.annotation.DateTimeFormat;





@Entity
public class Consulta {

	@Id
	@GeneratedValue
	private Long codigo;

	private String observacoes;

	@ManyToOne
	private Cliente cliente;

	
	private LocalTime horaconsulta;
	
	

	public LocalTime getHoraconsulta() {
		return horaconsulta;
	}
	public void setHoraconsulta(LocalTime horaconsulta) {
		this.horaconsulta = horaconsulta;
	}





	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private LocalDate dataconsulta;
	
	public LocalDate getDataconsulta() {
		return dataconsulta;
	}
	public void setDataconsulta(LocalDate dataconsulta) {
		this.dataconsulta = dataconsulta;
	}
	
	
	
	public Long getCodigo() {
		return codigo;
	}
	public void setCodigo(Long codigo) {
		this.codigo = codigo;
	}
	
	public Cliente getCliente() {
		return cliente;
	}
	public void setCliente(Cliente cliente) {
		this.cliente = cliente;
	}
	
	
	

	
	private String motivoconsulta;
	private String lesometria_od;
	private String lesometria_oe;
	private String lesometria_od_add;
	private String lesometria_oe_add;
	private String lesometria_od_prisma;
	private String lesometria_oe_prisma;
	private String lesometria_obs;

	private String refracao_od;
	private String refracao_oe;
	private String retinoscopia_estatica_od;
	private String retinoscopia_estatica_oe;
	private String retinoscopia_mem_od;
	private String retinoscopia_mem_oe;
	private String subjetivo_od;
	private String subjetivo_oe;
	private String prisma_av_od;
	private String prisma_av_oe;
	private String efs_od;
	private String efs_oe;
	private String cil_od;
	private String cil_oe;
	private String eixo_od;
	private String eixo_oe;
	private String add_od;
	private String add_oe;
	private String prisma_od;
	private String prisma_oe;
	
	
	
	
	
	public String getObservacoes() {
		return observacoes;
	}
	public void setObservacoes(String observacoes) {
		this.observacoes = observacoes;
	}
	
	
	
	public String getMotivoconsulta() {
		return motivoconsulta;
	}
	public void setMotivoconsulta(String motivoconsulta) {
		this.motivoconsulta = motivoconsulta;
	}
	public String getLesometria_od() {
		return lesometria_od;
	}
	public void setLesometria_od(String lesometria_od) {
		this.lesometria_od = lesometria_od;
	}
	public String getLesometria_oe() {
		return lesometria_oe;
	}
	public void setLesometria_oe(String lesometria_oe) {
		this.lesometria_oe = lesometria_oe;
	}
	public String getLesometria_od_add() {
		return lesometria_od_add;
	}
	public void setLesometria_od_add(String lesometria_od_add) {
		this.lesometria_od_add = lesometria_od_add;
	}
	public String getLesometria_oe_add() {
		return lesometria_oe_add;
	}
	public void setLesometria_oe_add(String lesometria_oe_add) {
		this.lesometria_oe_add = lesometria_oe_add;
	}
	public String getLesometria_od_prisma() {
		return lesometria_od_prisma;
	}
	public void setLesometria_od_prisma(String lesometria_od_prisma) {
		this.lesometria_od_prisma = lesometria_od_prisma;
	}
	public String getLesometria_oe_prisma() {
		return lesometria_oe_prisma;
	}
	public void setLesometria_oe_prisma(String lesometria_oe_prisma) {
		this.lesometria_oe_prisma = lesometria_oe_prisma;
	}
	public String getLesometria_obs() {
		return lesometria_obs;
	}
	public void setLesometria_obs(String lesometria_obs) {
		this.lesometria_obs = lesometria_obs;
	}
	public String getRefracao_od() {
		return refracao_od;
	}
	public void setRefracao_od(String refracao_od) {
		this.refracao_od = refracao_od;
	}
	public String getRefracao_oe() {
		return refracao_oe;
	}
	public void setRefracao_oe(String refracao_oe) {
		this.refracao_oe = refracao_oe;
	}
	public String getRetinoscopia_estatica_od() {
		return retinoscopia_estatica_od;
	}
	public void setRetinoscopia_estatica_od(String retinoscopia_estatica_od) {
		this.retinoscopia_estatica_od = retinoscopia_estatica_od;
	}
	public String getRetinoscopia_estatica_oe() {
		return retinoscopia_estatica_oe;
	}
	public void setRetinoscopia_estatica_oe(String retinoscopia_estatica_oe) {
		this.retinoscopia_estatica_oe = retinoscopia_estatica_oe;
	}
	public String getRetinoscopia_mem_od() {
		return retinoscopia_mem_od;
	}
	public void setRetinoscopia_mem_od(String retinoscopia_mem_od) {
		this.retinoscopia_mem_od = retinoscopia_mem_od;
	}
	public String getRetinoscopia_mem_oe() {
		return retinoscopia_mem_oe;
	}
	public void setRetinoscopia_mem_oe(String retinoscopia_mem_oe) {
		this.retinoscopia_mem_oe = retinoscopia_mem_oe;
	}
	public String getSubjetivo_od() {
		return subjetivo_od;
	}
	public void setSubjetivo_od(String subjetivo_od) {
		this.subjetivo_od = subjetivo_od;
	}
	public String getSubjetivo_oe() {
		return subjetivo_oe;
	}
	public void setSubjetivo_oe(String subjetivo_oe) {
		this.subjetivo_oe = subjetivo_oe;
	}
	public String getPrisma_av_od() {
		return prisma_av_od;
	}
	public void setPrisma_av_od(String prisma_av_od) {
		this.prisma_av_od = prisma_av_od;
	}
	public String getPrisma_av_oe() {
		return prisma_av_oe;
	}
	public void setPrisma_av_oe(String prisma_av_oe) {
		this.prisma_av_oe = prisma_av_oe;
	}
	public String getEfs_od() {
		return efs_od;
	}
	public void setEfs_od(String efs_od) {
		this.efs_od = efs_od;
	}
	public String getEfs_oe() {
		return efs_oe;
	}
	public void setEfs_oe(String efs_oe) {
		this.efs_oe = efs_oe;
	}
	public String getCil_od() {
		return cil_od;
	}
	public void setCil_od(String cil_od) {
		this.cil_od = cil_od;
	}
	public String getCil_oe() {
		return cil_oe;
	}
	public void setCil_oe(String cil_oe) {
		this.cil_oe = cil_oe;
	}
	public String getEixo_od() {
		return eixo_od;
	}
	public void setEixo_od(String eixo_od) {
		this.eixo_od = eixo_od;
	}
	public String getEixo_oe() {
		return eixo_oe;
	}
	public void setEixo_oe(String eixo_oe) {
		this.eixo_oe = eixo_oe;
	}
	public String getAdd_od() {
		return add_od;
	}
	public void setAdd_od(String add_od) {
		this.add_od = add_od;
	}
	public String getAdd_oe() {
		return add_oe;
	}
	public void setAdd_oe(String add_oe) {
		this.add_oe = add_oe;
	}
	public String getPrisma_od() {
		return prisma_od;
	}
	public void setPrisma_od(String prisma_od) {
		this.prisma_od = prisma_od;
	}
	public String getPrisma_oe() {
		return prisma_oe;
	}
	public void setPrisma_oe(String prisma_oe) {
		this.prisma_oe = prisma_oe;
	}
	
	public Consulta() {
		super();
		// TODO Auto-generated constructor stub
	}

	
	
	
	
	
	
	
	
	
	
	
	
}
