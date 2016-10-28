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

import br.com.optosistem.domain.Cliente;
import br.com.optosistem.repository.ClienteRepository;

@Controller
@RequestMapping(value = "/cliente")

public class ClienteController {

	private ClienteRepository clienteRepository;


	@Autowired
	public ClienteController(ClienteRepository clienteRepository) {
		this.clienteRepository = clienteRepository;
	}

	@RequestMapping(value = "/", method = RequestMethod.POST)
	public String salvar(@Valid Cliente cliente, BindingResult erros, Model model, RedirectAttributes redirect) {
		if (erros.hasErrors()) {
			return "cliente/form";
		}
		redirect.addFlashAttribute("");
		clienteRepository.save(cliente);
		return "redirect:/cliente/";
		
		/*mensagem", "Registro salvo com sucesso*/
	}

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String lista(Model model) {
		model.addAttribute("clientes", clienteRepository.findAll());
		return "/cliente/lista";
	}

	@RequestMapping(value = "/novo", method = RequestMethod.GET)
	public String novo(Model model) {
		return "/cliente/form";
	}

	@RequestMapping(value = "/editar/{codigo}", method = RequestMethod.GET)
	public String editar(@PathVariable Long codigo, Model model) {
		model.addAttribute(clienteRepository.findOne(codigo));
		return "/cliente/form";
	}

	@RequestMapping(value = "/delete/{codigo}", method = RequestMethod.GET)
	public String delete(@PathVariable Long codigo, Model model) {
		clienteRepository.delete(codigo);
		return "redirect:/cliente/";

	}

}
