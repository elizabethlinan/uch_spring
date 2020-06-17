package com.redsocial.controlador;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.redsocial.entidad.Alumno;
import com.redsocial.servicio.AlumnoServicio;

@Controller
public class AlumnoController {

	@Autowired
	private AlumnoServicio servicio;

	@RequestMapping("/verAlumno")
	public String verPagina(Model m) {
		List<Alumno> list = servicio.listaAlumno();
		m.addAttribute("alumnos", list);
		return "crudAlumno";
	}
	
	
	@RequestMapping("/listaAlumno")
	public String lista(@RequestParam Map<String,String> params, Model m) {
		List<Alumno> list = servicio.listaAlumnoPorNombre(params.get("filtro")+"%");
		m.addAttribute("alumnos", list);
		return "crudAlumno";
	}
	
	@RequestMapping("/registraActualizaAlumno")
	public String metodoRegistra(Alumno obj, Model m) {
		servicio.insertaActualizaAlumno(obj);
		List<Alumno> list = servicio.listaAlumno();
		m.addAttribute("alumnos", list);
		return "crudAlumno";
	}
	
	@RequestMapping("/eliminaAlumno")
	public String metodoElimina(@RequestParam Map<String,String> params, Model m) {
		servicio.eliminaAlumno(Integer.parseInt(params.get("id")));
		
		List<Alumno> list = servicio.listaAlumno();
		m.addAttribute("alumnos", list);
		
		return "crudAlumno";
	}
	
	
	

	
	
		
	
	
	
	
	
	

}