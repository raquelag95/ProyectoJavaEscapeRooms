package modelo;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.ejb.LocalBean;
import javax.ejb.Stateless;
import javax.swing.ImageIcon;

/**
 * Session Bean implementation class Modelo
 */
@Stateless
@LocalBean
public class Modelo {
	private List<Salas> listaSalas;
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
						rs.getInt("jugMin"), rs.getInt("jugMax"), rs.getDouble("precio"), rs.getInt("dificultad"), 
						rs.getString("descripcion"), rs.getObject("imagen", ImageIcon.class)));					
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
