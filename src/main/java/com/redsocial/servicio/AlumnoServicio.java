package com.redsocial.servicio;

import java.util.List;

import com.redsocial.entidad.Alumno;


public interface AlumnoServicio {
 
	public abstract void eliminaAlumno(int id) ;
	public abstract Alumno insertaActualizaAlumno(Alumno  obj) ;
	public abstract List<Alumno> listaAlumno() ;
	public abstract List<Alumno> listaAlumnoPorNombre(String filtro) ;
}


