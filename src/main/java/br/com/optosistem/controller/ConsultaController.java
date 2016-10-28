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

import br.com.optosistem.domain.Consulta;
import br.com.optosistem.repository.ConsultaRepository;

@Controller
@RequestMapping(value ="/consulta")
public class ConsultaController {
	
	private ConsultaRepository consultaRepository;

	/*@InitBinder
    protected void initBinder(WebDataBinder binder) {
        binder.setValidator(new ValidadorPreco());
    }*/
	
	@Autowired
	public ConsultaController(ConsultaRepository consultaRepository) {
		this.consultaRepository = consultaRepository;
	}

	@RequestMapping(value ="/", method=RequestMethod.POST)
	public String salvar(@Valid Consulta consulta, BindingResult erros, Model model, 
			RedirectAttributes redirect){
		if(erros.hasErrors()){
			return "consulta/form";
		}
		redirect.addFlashAttribute("mensagem", "Registro salvo com sucesso");
		consultaRepository.save(consulta);
		return "redirect:/consulta/";
	}
	
	@RequestMapping(value ="/", method=RequestMethod.GET)
	public String lista(Model model){
		model.addAttribute("consultas", consultaRepository.findAll());
		return "/consulta/lista";
	}
	
	@RequestMapping(value ="/", method=RequestMethod.GET)
	public String listadia(Model model){
		model.addAttribute("consultasdia", consultaRepository.findAll());
		return "/consulta/dia";
	}
	
	
	
	
	@RequestMapping(value ="/novo", method=RequestMethod.GET)
	public String novo(Model model){
		return "/consulta/form";
	}
	
	@RequestMapping(value ="/editar/{codigo}", method=RequestMethod.GET)
	public String editar(@PathVariable Long codigo, Model model){
		model.addAttribute(consultaRepository.findOne(codigo));
		return "/consulta/form";
	}
	
	@RequestMapping(value = "/delete/{codigo}", method = RequestMethod.GET)
	public String delete(@PathVariable Long codigo, Model model) {
	consultaRepository.delete(codigo);
	return "redirect:/consulta/";

	}
	
	@RequestMapping(value ="/receita/{codigo}", method=RequestMethod.GET)
	public String receita(@PathVariable Long codigo, Model model){
		model.addAttribute(consultaRepository.findOne(codigo));
		return "/consulta/formreceita";
	}
	
	
	
	
	
	
	
	
}
