package com.redsocial.controlador;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.redsocial.entidad.Concurso;
import com.redsocial.servicio.ConcursoServicio;

@Controller
public class ConcursoController {

	@Autowired
	private ConcursoServicio servicio;

	@RequestMapping("/verConcurso")
	public String verPagina(Model m) {
		List<Concurso> list = servicio.listaConcurso("");
		m.addAttribute("concursos", list);
		return "crudConcurso";
	}
	
	
	@RequestMapping("/listaConcurso")
	public String lista(@RequestParam Map<String,String> params, Model m) {
		List<Concurso> list = servicio.listaConcurso(params.get("filtro"));
		m.addAttribute("concursos", list);
		return "crudConcurso";
	}
	
	@RequestMapping("/registraConcurso")
	public String metodoRegistra(Concurso obj, Model m) {
		servicio.insertaConcurso(obj);
		List<Concurso> list = servicio.listaConcurso("");
		m.addAttribute("concursos", list);
		return "crudConcurso";
	}
	
	@RequestMapping("/actualizaConcurso")
	public String metodoActualiza(Concurso obj, Model m) {
		servicio.actualizaConcurso(obj);
		List<Concurso> list = servicio.listaConcurso("");
		m.addAttribute("concursos", list);
		return "crudConcurso";
	}
	
	@RequestMapping("/eliminaConcurso")
	public String metodoElimina(@RequestParam Map<String,String> params, Model m) {
		servicio.eliminaConcurso(Integer.parseInt(params.get("id")));
		
		List<Concurso> list = servicio.listaConcurso("");
		m.addAttribute("concursos", list);
		
		return "crudConcurso";
	}
	
	
	

	
	
		
	
	
	
	
	
	

}