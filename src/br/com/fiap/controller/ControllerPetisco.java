package br.com.fiap.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import br.com.fiap.model.Petisco;

@Controller
@RequestMapping(name="/petisco")
public class ControllerPetisco {

	
	@GetMapping("cadastro")
	public String cadastro(){
		return "petisco/cadastro";
	}
	
	@PostMapping("cadastrar")
	public ModelAndView cadastrar(Petisco petisco){
		return null;	
	}
}
