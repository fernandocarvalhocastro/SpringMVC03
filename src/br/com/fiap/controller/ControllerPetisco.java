package br.com.fiap.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import br.com.fiap.dao.PetiscoDAO;
import br.com.fiap.dao.impl.PetiscoDAOImpl;
import br.com.fiap.model.Petisco;

@Controller
@RequestMapping("/petisco")
public class ControllerPetisco {

	@Autowired
	private PetiscoDAO dao;
	
	@GetMapping("cadastrar")
	public String abrirForm(){
		return "petisco/cadastro";
	}
	
	@Transactional
	@PostMapping("cadastrar")
	public ModelAndView cadastrar(Petisco petisco){
		ModelAndView retorno = new ModelAndView("petisco/cadastro");
		dao.cadastrar(petisco);
		retorno.addObject("msg", "Cadastrado com sucesso");
		return retorno;	
	}
	
	@GetMapping("listar")
	public ModelAndView listar(){
		ModelAndView retorno = new ModelAndView("petisco/lista");
		retorno.addObject("lista", dao.listar());
		return retorno;	
	}
}
