package com.redsocial.servicio;

import java.util.List;

import com.redsocial.entidad.Concurso;

public interface ConcursoServicio  {

	public abstract int eliminaConcurso(long id) ;
	public abstract int insertaConcurso(Concurso  obj) ;
	public abstract int actualizaConcurso(Concurso obj) ;
	public abstract List<Concurso> listaConcurso(String filtro) ;

	
	
}
