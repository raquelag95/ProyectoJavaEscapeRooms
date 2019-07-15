package modelo;

public class Reservas {
	private int id;
	private int idHorario;
	private String nombre;
	private String apellido1;
	private String apellido2;
	private String telefono;
	private String correo;
	private int nSala;
	private int nJugadores;
	
	public Reservas(int id, int idHorario, String nombre, String apellido1, String apellido2, String telefono,
			String correo, int nSala, int nJugadores) {
		super();
		this.id = id;
		this.idHorario = idHorario;
		this.nombre = nombre;
		this.apellido1 = apellido1;
		this.apellido2 = apellido2;
		this.telefono = telefono;
		this.correo = correo;
		this.nSala = nSala;
		this.nJugadores = nJugadores;
	}

		
	public Reservas(int idHorario, String nombre, String apellido1, String apellido2, String telefono, String correo,
			int nSala, int nJugadores) {
		super();
		this.idHorario = idHorario;
		this.nombre = nombre;
		this.apellido1 = apellido1;
		this.apellido2 = apellido2;
		this.telefono = telefono;
		this.correo = correo;
		this.nSala = nSala;
		this.nJugadores = nJugadores;
	}





	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getIdHorario() {
		return idHorario;
	}

	public void setIdHorario(int idHorario) {
		this.idHorario = idHorario;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getApellido1() {
		return apellido1;
	}

	public void setApellido1(String apellido1) {
		this.apellido1 = apellido1;
	}

	public String getApellido2() {
		return apellido2;
	}

	public void setApellido2(String apellido2) {
		this.apellido2 = apellido2;
	}

	public String getTelefono() {
		return telefono;
	}

	public void setTelefono(String telefono) {
		this.telefono = telefono;
	}

	public String getCorreo() {
		return correo;
	}

	public void setCorreo(String correo) {
		this.correo = correo;
	}

	public int getnSala() {
		return nSala;
	}

	public void setnSala(int nSala) {
		this.nSala = nSala;
	}

	public int getnJugadores() {
		return nJugadores;
	}

	public void setnJugadores(int nJugadores) {
		this.nJugadores = nJugadores;
	}
	
	
	
}
