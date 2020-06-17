package com.redsocial.servicio;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.redsocial.entidad.Concurso;
import com.redsocial.repositorio.ConcursoRepositorio;

@Service
public class ConcursoServicioImpl implements ConcursoServicio {

	@Autowired
	private ConcursoRepositorio repositorio;

	@Override
	public void eliminaConcurso(long id) {
		// TODO Auto-generated method stub
		repositorio.deleteById(id);
	}

	@Override
	public Concurso insertaActualizaConcurso(Concurso obj) {
		// TODO Auto-generated method stub
		return repositorio.save(obj);
	}

	@Override
	public List<Concurso> listaConcurso() {
		// TODO Auto-generated method stub
			return  repositorio.findAll();
	}

	@Override
	public List<Concurso> listaConcursoPorNombre(String filtro) {
		return repositorio.buscaPorNombre(filtro);
	}



	

}






