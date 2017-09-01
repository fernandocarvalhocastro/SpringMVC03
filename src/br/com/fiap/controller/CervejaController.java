package br.com.fiap.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import br.com.fiap.dao.CervejaDAO;
import br.com.fiap.model.Cerveja;


@Controller
@RequestMapping("/cerveja")
public class CervejaController {
	
	//private static List<Cerveja> lista= new ArrayList<>();
	@Autowired // Injeção de dependencia
	private CervejaDAO dao;
	
	//Abrir tela do formulário
	@GetMapping("cadastro")
	public String abrirForm(){
		return "cerveja/cadastro";
	}
	
	//Cadastrar Cerveja
	@Transactional
	@PostMapping("cadastrar")
	public ModelAndView cadastrar(Cerveja cerveja){
		dao.cadastrar(cerveja);
		ModelAndView retorno = new ModelAndView("cerveja/cadastro");
		retorno.addObject("produto",cerveja);
		return retorno;
	}
	
	//Listagem 
	@GetMapping("listar")
	public ModelAndView listar(){
		ModelAndView retorno = new ModelAndView("cerveja/lista-cerveja");
		retorno.addObject("cervejas",dao.listar());
		return retorno;
	}
	
	
}
