package br.com.fiap.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.SequenceGenerator;

@Entity
@SequenceGenerator(allocationSize=1,name="seqCerveja",sequenceName="SQ_CERVEJA", initialValue=1)
public class Cerveja {
	
	@Id
	@GeneratedValue(generator="seqCerveja",strategy=GenerationType.SEQUENCE)
	private int id;
	
	@Column(name="nm_cerveja")
	private String nome;
	
	@Column(name="ds_preco")
	private double preco;
	
	@Column(name="tp_cerveja")
	private String tipo;

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public double getPreco() {
		return preco;
	}

	public void setPreco(double preco) {
		this.preco = preco;
	}

	public String getTipo() {
		return tipo;
	}

	public void setTipo(String tipo) {
		this.tipo = tipo;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		id = id;
	}

}
