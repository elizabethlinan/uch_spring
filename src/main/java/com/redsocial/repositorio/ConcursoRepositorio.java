package com.redsocial.repositorio;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;


import com.redsocial.entidad.Concurso;

public interface ConcursoRepositorio extends JpaRepository<Concurso, Long> {


	  @Query("Select x from Concurso x where x.nombre like :var_nombre")
		public abstract List<Concurso>buscaPorNombre(@Param("var_nombre")String filtro);
	
	
}
