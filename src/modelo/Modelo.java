package modelo;

import java.sql.SQLException;

import javax.ejb.LocalBean;
import javax.ejb.Stateless;

/**
 * Session Bean implementation class Modelo
 */
@Stateless
@LocalBean
public class Modelo {
	private Reservas reserv;
	
	public Modelo() {
        // TODO Auto-generated constructor stub
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
