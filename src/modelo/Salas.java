package modelo;

public class Salas {
	private int id;
	private String nombre;
	private int duracion;
	private int jugMin;
	private int jugMax;
	private double precio;
	private int dificultad;
	private String descripcion;
	private String imagen;
	
	
	public Salas(int id, String nombre, int duracion, int jugMin, int jugMax, double precio, int dificultad,
			String descripcion, String imagen) {
		super();
		this.id = id;
		this.nombre = nombre;
		this.duracion = duracion;
		this.jugMin = jugMin;
		this.jugMax = jugMax;
		this.precio = precio;
		this.dificultad = dificultad;
		this.descripcion = descripcion;
		this.imagen = imagen;
	}

	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public int getDuracion() {
		return duracion;
	}

	public void setDuracion(int duracion) {
		this.duracion = duracion;
	}

	public int getJugMin() {
		return jugMin;
	}

	public void setJugMin(int jugMin) {
		this.jugMin = jugMin;
	}

	public int getJugMax() {
		return jugMax;
	}

	public void setJugMax(int jugMax) {
		this.jugMax = jugMax;
	}

	public double getPrecio() {
		return precio;
	}

	public void setPrecio(double precio) {
		this.precio = precio;
	}

	public int getDificultad() {
		return dificultad;
	}

	public void setDificultad(int dificultad) {
		this.dificultad = dificultad;
	}

	public String getDescripcion() {
		return descripcion;
	}

	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}


	public String getImagen() {
		return imagen;
	}


	public void setImagen(String imagen) {
		this.imagen = imagen;
	}

	
	
	
	
}
