package br.com.optosistem.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import br.com.optosistem.domain.Sexo;
import br.com.optosistem.repository.SexoRepository;

@Controller
@RequestMapping(value ="/sexo")
public class SexoController {

	private SexoRepository sexoRepository;

	
	
	@Autowired
	public SexoController(SexoRepository sexoRepository) {
		this.sexoRepository = sexoRepository;
	}

	@RequestMapping(value ="/", method=RequestMethod.POST)
	public String salvar(@Valid Sexo sexo, BindingResult erros, Model model, 
			RedirectAttributes redirect){
		if(erros.hasErrors()){
			return "sexo/form";
		}
		redirect.addFlashAttribute("mensagem", "Registro salvo com sucesso");
		sexoRepository.save(sexo);
		return "redirect:/sexo/";
	}
	
	@RequestMapping(value ="/", method=RequestMethod.GET)
	public String lista(Model model){
		model.addAttribute("sexos", sexoRepository.findAll());
		return "/sexo/lista";
	}
	
	@RequestMapping(value ="/novo", method=RequestMethod.GET)
	public String novo(Model model){
		return "/sexo/form";
	}
	
	@RequestMapping(value ="/editar/{codigo}", method=RequestMethod.GET)
	public String editar(@PathVariable Long codigo, Model model){
		model.addAttribute(sexoRepository.findOne(codigo));
		return "/sexo/form";
	}
	
	@RequestMapping(value = "/delete/{codigo}", method = RequestMethod.GET)
	public String delete(@PathVariable Long codigo, Model model) {
	sexoRepository.delete(codigo);
	return "redirect:/sexo/";

	}
	
	
}
