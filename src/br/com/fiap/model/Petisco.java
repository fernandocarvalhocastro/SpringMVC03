package br.com.fiap.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;

@Entity
@SequenceGenerator(allocationSize=1,name="seqPetisco", sequenceName="SQ_PETISCO")
public class Petisco {

	@Id
	@GeneratedValue(generator="seqPetisco", strategy=GenerationType.SEQUENCE)
	@Column(name="cd_petisco")
	private int codigo;
	
	@Column(name="nm_petisco")
	private String nome;
	
	@Column(name="vl_petisco")
	private double valor;

	public int getCodigo() {
		return codigo;
	}

	public void setCodigo(int codigo) {
		this.codigo = codigo;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public double getValor() {
		return valor;
	}

	public void setValor(double valor) {
		this.valor = valor;
	}

}
