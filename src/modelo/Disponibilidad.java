package modelo;

public class Disponibilidad {
	private Integer sala;
	private String fecha;
	
	public Disponibilidad(Integer sala, String fecha) {
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

	public String getFecha() {
		return fecha;
	}

	public void setFecha(String fecha) {
		this.fecha = fecha;
	}
	
	
	
}
