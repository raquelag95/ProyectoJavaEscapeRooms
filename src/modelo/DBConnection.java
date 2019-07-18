package modelo;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.time.LocalDateTime;
import java.util.List;
import java.util.Properties;
import java.util.TimeZone;

public class DBConnection {
	private String usuario;
	private String password;
	private Connection conn;
			
	public DBConnection(String usuario, String password) {
		super();
		this.usuario = usuario;
		this.password = password;
	}
	
	public Connection getConexion() throws ClassNotFoundException {
		conn = null;
		String urlConexion = "jdbc:mysql://localhost:3306/rooms?" + "serverTimezone=" + TimeZone.getDefault().getID();
		
		Properties infoConexion = new Properties();
		
		infoConexion.put("user", this.usuario);
		infoConexion.put("password", this.password);
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection(urlConexion, infoConexion);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return conn;
	}
	

	public ResultSet getReservas() throws SQLException {
		ResultSet rs = null;
		String query = "SELECT * FROM rooms.reservas";
		
		Statement stmt = null;
		try {
			conn = getConexion();
			stmt = conn.createStatement();
			rs = stmt.executeQuery(query);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return rs;
	}
	
	public Reservas insertaReserva (Reservas r) throws SQLException {
		String query = "INSERT INTO `rooms`.`reservas` (`idHorario`, `nombre`, `apellido1`, `apellido2`, `telefono`, `correo`, `nJugadores`) "
				+ "VALUES (?, ?, ?, ?, ?, ?, ?)";
		PreparedStatement pstmt = null;
	
		try {
			conn = getConexion();
			conn.setAutoCommit(false);
			pstmt = conn.prepareStatement(query, Statement.RETURN_GENERATED_KEYS);
			pstmt.setInt(1, r.getIdHorario());
			pstmt.setString(2, r.getNombre());
			pstmt.setString(3, r.getApellido1());
			pstmt.setString(4, r.getApellido2());
			pstmt.setString(5, r.getTelefono());
			pstmt.setString(6, r.getCorreo());
			pstmt.setInt(7, r.getnJugadores());
			pstmt.executeUpdate();
			
			ResultSet rs = pstmt.getGeneratedKeys();
			if (rs.next()) {
				r.setId(rs.getInt(1));
			}
			conn.commit();
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			conn.setAutoCommit(true);
		}	
		
		return r;
	

	}
	
	public Horario insertaHorario (Horario h) throws SQLException {
		String query = "INSERT INTO `rooms`.`horario` (`idSala`, `diaHoraInicio`, `disponibilidad` ) VALUES (?, ?, ?)";
		PreparedStatement pstmt = null;
		
		try {
			conn = getConexion();
			conn.setAutoCommit(false);
			pstmt = conn.prepareStatement(query, Statement.RETURN_GENERATED_KEYS);
			pstmt.setInt(1, h.getIdSala());
			pstmt.setObject(2, h.getDiaHoraInicio());
			pstmt.setBoolean(3, h.getDisponibilidad());
			pstmt.executeUpdate();
			
			ResultSet rs = pstmt.getGeneratedKeys();
			if (rs.next()) {
				h.setId(rs.getInt(1));
			}
			conn.commit();
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			conn.setAutoCommit(true);
		}	
		
		
		return h;
		
	}

	
	public ResultSet getSalas() throws SQLException {
		ResultSet rs = null;
		String query = "SELECT * FROM rooms.salas";
		
		Statement stmt = null;
		try {
			conn = getConexion();
			stmt = conn.createStatement();
			rs = stmt.executeQuery(query);
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return rs;
	}
	
	public ResultSet getHorarios(int idSala, String fecha) throws SQLException {
	ResultSet rs = null;
	String query = "SELECT * FROM rooms.horario WHERE idSala = ? AND DATE(diaHoraInicio) = ?";
	
	PreparedStatement pstmt = null;
	
	try {
		conn = getConexion();
		pstmt = conn.prepareStatement(query);
		pstmt.setInt(1, idSala);
		pstmt.setString(2, fecha);
		rs = pstmt.executeQuery();
	} catch (ClassNotFoundException e) {
		e.printStackTrace();
	}
	return rs;
	}
	
	public Horario actualizaHorario (Horario h) throws SQLException {
		String query = "UPDATE rooms.horario set disponibilidad = false where id = ?";
		
		PreparedStatement pstmt = null;
		
		try {
			conn = getConexion();
			
			pstmt = conn.prepareStatement(query);
			pstmt.setBoolean(1, h.getDisponibilidad());
			pstmt.executeUpdate();
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
				
	}
		return h;
	}
	
}
