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

import br.com.optosistem.domain.User;
import br.com.optosistem.repository.UserRepository;

@Controller
@RequestMapping(value = "/user")

public class UserController {

	private UserRepository userRepository;


	@Autowired
	public UserController(UserRepository userRepository) {
		this.userRepository = userRepository;
	}

	@RequestMapping(value = "/", method = RequestMethod.POST)
	public String salvar(@Valid User user, BindingResult erros, Model model, RedirectAttributes redirect) {
		if (erros.hasErrors()) {
			return "user/form";
		}
		redirect.addFlashAttribute("");
		userRepository.save(user);
		return "redirect:/user/";
		
		/*mensagem", "Registro salvo com sucesso*/
	}

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String lista(Model model) {
		model.addAttribute("users", userRepository.findAll());
		return "/user/lista";
	}

	@RequestMapping(value = "/novo", method = RequestMethod.GET)
	public String novo(Model model) {
		return "/user/form";
	}

	@RequestMapping(value = "/editar/{codigo}", method = RequestMethod.GET)
	public String editar(@PathVariable Long codigo, Model model) {
		model.addAttribute(userRepository.findOne(codigo));
		return "/user/form";
	}

	@RequestMapping(value = "/delete/{codigo}", method = RequestMethod.GET)
	public String delete(@PathVariable Long codigo, Model model) {
		userRepository.delete(codigo);
		return "redirect:/user/";

	}

}
