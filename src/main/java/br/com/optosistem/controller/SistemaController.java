package br.com.optosistem.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SistemaController {

	@RequestMapping("/sistema")
	public String homesistema() {
		return "sistema";
	}
	
}
