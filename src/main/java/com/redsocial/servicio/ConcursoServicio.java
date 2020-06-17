package com.redsocial.servicio;

import java.util.List;


import com.redsocial.entidad.Concurso;

public interface ConcursoServicio  {

	public abstract void eliminaConcurso(long id) ;
	public abstract Concurso insertaActualizaConcurso(Concurso  obj) ;
	public abstract List<Concurso> listaConcurso() ;
	public abstract List<Concurso> listaConcursoPorNombre(String filtro) ;
	

	
	
}
