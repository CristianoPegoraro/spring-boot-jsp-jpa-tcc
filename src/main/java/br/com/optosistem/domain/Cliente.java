package br.com.optosistem.domain;

import java.time.LocalDate;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.format.annotation.DateTimeFormat;

@Entity
public class Cliente {

	@Id
	@GeneratedValue
	private Long codigo;

	@NotEmpty
	@Column(nullable = false)
	private String nome;
	/*@Column(unique = true)*/
	private String cpf;
	private String rg;
	private String endereco;
	private String telefone;
	private String email;
	private String cidade;
	private String ocupacao;
	private String cep;

	
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private LocalDate datanasc;

	public LocalDate getDatanasc() {
		return datanasc;
	}

	public void setDatanasc(LocalDate datanasc) {
		this.datanasc = datanasc;
	}

	private String celular;
	/* private String nomeresponsavel; */
	private String observacoes;

	@ManyToOne
	private Sexo sexo;
	
	public Sexo getSexo() {
		return sexo;
	}

	public void setSexo(Sexo sexo) {
		this.sexo = sexo;
	}

	public Cliente() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Long getCodigo() {
		return codigo;
	}

	public void setCodigo(Long codigo) {
		this.codigo = codigo;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getCpf() {
		return cpf;
	}

	public void setCpf(String cpf) {
		this.cpf = cpf;
	}

	public String getRg() {
		return rg;
	}

	public void setRg(String rg) {
		this.rg = rg;
	}

	public String getEndereco() {
		return endereco;
	}

	public void setEndereco(String endereco) {
		this.endereco = endereco;
	}

	public String getTelefone() {
		return telefone;
	}

	public void setTelefone(String telefone) {
		this.telefone = telefone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getCidade() {
		return cidade;
	}

	public void setCidade(String cidade) {
		this.cidade = cidade;
	}

	public String getOcupacao() {
		return ocupacao;
	}

	public void setOcupacao(String ocupacao) {
		this.ocupacao = ocupacao;
	}

	public String getCelular() {
		return celular;
	}

	public void setCelular(String celular) {
		this.celular = celular;
	}

	/*
	 * public String getNomeresponsavel() { return nomeresponsavel; } public
	 * void setNomeresponsavel(String nomeresponsavel) { this.nomeresponsavel =
	 * nomeresponsavel; }
	 */
	public String getObservacoes() {
		return observacoes;
	}

	public void setObservacoes(String observacoes) {
		this.observacoes = observacoes;
	}

	public String getCep() {
		return cep;
	}

	public void setCep(String cep) {
		this.cep = cep;
	}
	
	

}
