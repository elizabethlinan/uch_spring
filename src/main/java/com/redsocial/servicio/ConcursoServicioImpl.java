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
	public int eliminaConcurso(long id) {
		 repositorio.deleteById(id);
		 return 0;
	}

	@Override
	public int insertaConcurso(Concurso obj) {
		Concurso objNuevo = repositorio.save(obj);
		if(objNuevo == null) {
			return -1;
		}else {
			return 1;
		}
	}

	@Override
	public int actualizaConcurso(Concurso obj) {
		Concurso objNuevo = repositorio.save(obj);
		if(objNuevo == null) {
			return -1;
		}else {
			return 1;
		}
	}

	@Override
	public List<Concurso> listaConcurso(String filtro) {
		return repositorio.findAll();
	}

}






