package com.redsocial.servicio;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.redsocial.entidad.Alumno;
import com.redsocial.repositorio.AlumnoRepositorio;

@Service
public class AlumnoServicioImpl  implements AlumnoServicio{

	@Autowired
	private AlumnoRepositorio repositorio;
	
	
	@Override
	public void eliminaAlumno(int id) {
		repositorio.deleteById(id);
		
	}

	@Override
	public Alumno insertaActualizaAlumno(Alumno obj) {
		
		return repositorio.save(obj);
	}

	@Override
	public List<Alumno> listaAlumno() {
		// TODO Auto-generated method stub
		return  repositorio.findAll();
	}

	@Override
	public List<Alumno> listaAlumnoPorNombre(String filtro) {
		
		return repositorio.AlumnoPorNombre(filtro);
	}

}
