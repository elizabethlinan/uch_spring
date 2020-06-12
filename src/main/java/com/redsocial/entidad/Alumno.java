package com.redsocial.entidad;
import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.springframework.format.annotation.DateTimeFormat;





@Entity
@Table(name="alumno")
public class Alumno {

	@Id
	@GeneratedValue(strategy =GenerationType.IDENTITY)
	
	@Column (name="idalumno")
	private int idAlumno;
	
	
	@Column(name="dni")
	private String dni;
	
	
	@Column(name="correo")
	private String correo;
	
	
	@Column(name="fechaNacimiento")
	@Temporal(TemporalType.DATE)
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date fechaNacimiento;


	public int getIdAlumno() {
		return idAlumno;
	}


	public void setIdAlumno(int idAlumno) {
		this.idAlumno = idAlumno;
	}


	public String getDni() {
		return dni;
	}


	public void setDni(String dni) {
		this.dni = dni;
	}


	public String getCorreo() {
		return correo;
	}


	public void setCorreo(String correo) {
		this.correo = correo;
	}


	public Date getFechaNacimiento() {
		return fechaNacimiento;
	}


	public void setFechaNacimiento(Date fechaNacimiento) {
		this.fechaNacimiento = fechaNacimiento;
	}
	
	
	
	
	
}
