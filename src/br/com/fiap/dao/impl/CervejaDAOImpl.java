package br.com.fiap.dao.impl;

import org.springframework.stereotype.Repository;

import br.com.fiap.dao.CervejaDAO;
import br.com.fiap.model.Cerveja;

//@Repository Indica que ele é um repositorio de dados (Componente do spring MVC)
@Repository
public class CervejaDAOImpl extends GenericDAOImpl<Cerveja, Integer> implements CervejaDAO{

}
