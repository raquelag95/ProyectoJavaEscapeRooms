package modelo;

import java.time.LocalDateTime;

public class Horario {
	private int id;
	private int idSala;
	private LocalDateTime diaHoraInicio;
	private Boolean disponibilidad;
	
	public Horario(int id, int idSala, LocalDateTime diaHoraInicio, Boolean disponibilidad) {
		super();
		this.id = id;
		this.idSala = idSala;
		this.diaHoraInicio = diaHoraInicio;
		this.disponibilidad = disponibilidad;
	}

	public Horario(int id, Integer idSala, LocalDateTime currentDateTime, LocalDateTime plusHours, boolean b) {
		// TODO Auto-generated constructor stub
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getIdSala() {
		return idSala;
	}

	public void setIdSala(int idSala) {
		this.idSala = idSala;
	}

	public LocalDateTime getDiaHoraInicio() {
		return diaHoraInicio;
	}

	public void setDiaHoraInicio(LocalDateTime diaHoraInicio) {
		this.diaHoraInicio = diaHoraInicio;
	}

	
	public Boolean getDisponibilidad() {
		return disponibilidad;
	}

	public void setDisponibilidad(Boolean disponibilidad) {
		this.disponibilidad = disponibilidad;
	}
	
	
	
}
