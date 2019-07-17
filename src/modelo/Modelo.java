package modelo;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.ejb.LocalBean;
import javax.ejb.Stateless;

/**
 * Session Bean implementation class Modelo
 */
@Stateless
@LocalBean
public class Modelo {
	private List<Salas> listaSalas;
	private List<Reservas> listaReservas;
	private Reservas reserv;

	public Modelo() {
		// TODO Auto-generated constructor stub
	}

	public List<Salas> getListaSalas() {
		listaSalas = new ArrayList<>();
		DBConnection conexion = new DBConnection("clara", "Temp3000$$");
		try {
			ResultSet rs = conexion.getSalas();
			while (rs.next()) {
				listaSalas.add(new Salas(rs.getInt("id"), rs.getString("nombre"), rs.getInt("duracion"), 
						rs.getInt("jugMin"), rs.getInt("jugMax"), rs.getInt("precio"), rs.getString("dificultad"), 
						rs.getString("descripcion"), rs.getString("imagen"), rs.getInt("nivelDificultad")));		
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return listaSalas;
	}

	public void setListaSalas(List<Salas> listaSalas) {
		this.listaSalas = listaSalas;
	}

	
	
	
	public List<Reservas> getListaReservas() {
		listaReservas = new ArrayList<>();
		DBConnection conexion = new DBConnection("clara", "Temp3000$$");
		try {
			ResultSet rs = conexion.getReservas();
			while (rs.next()) {
				
				listaReservas.add(new Reservas(rs.getInt("id"), rs.getInt("idHorario"), rs.getString("nombre"), 
						rs.getString("apellido1"), rs.getString("apellido2"), rs.getString("telefono"), rs.getString("correo"), 
						rs.getInt("nJugadores")));
					}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return listaReservas;
	}


	public void setListaReservas(List<Reservas> listaReservas) {
		this.listaReservas = listaReservas;
	}


	public Reservas getReserv() {
		return reserv;
	}

	public void setReserv(Reservas reserv) {
		DBConnection dbConnection = new DBConnection("clara", "Temp3000$$");
		
		try {
			this.reserv = dbConnection.insertaReserva(reserv);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	
}
