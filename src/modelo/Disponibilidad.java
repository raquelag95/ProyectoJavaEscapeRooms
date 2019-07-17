package modelo;

import java.time.LocalDate;

public class Disponibilidad {
	private Integer sala;
	private LocalDate fecha;
	
	public Disponibilidad(Integer sala, LocalDate fecha) {
		super();
		this.sala = sala;
		this.fecha = fecha;
	}

	public Integer getSala() {
		return sala;
	}

	public void setSala(Integer sala) {
		this.sala = sala;
	}

	public LocalDate getFecha() {
		return fecha;
	}

	public void setFecha(LocalDate fecha) {
		this.fecha = fecha;
	}
	
	
	
}
