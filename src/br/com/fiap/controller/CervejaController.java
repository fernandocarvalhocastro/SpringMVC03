package br.com.fiap.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import br.com.fiap.model.Cerveja;


@Controller
@RequestMapping("/cerveja")
public class CervejaController {

	//Abrir tela do formulário
	@GetMapping("cadastro")
	public String abrirForm(){
		return "cerveja/cadastro";
	}
	
	//Cadastrar Cerveja
	@PostMapping("cadastrar")
	public ModelAndView cadastrar(Cerveja cerveja){
		ModelAndView retorno = new ModelAndView("cerveja/cadastro");
		retorno.addObject("produto",cerveja);
		return retorno;
	}
	
	
}
