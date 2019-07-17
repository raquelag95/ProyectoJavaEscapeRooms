package controladores;

import java.io.IOException;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import modelo.Horario;
import modelo.Salas;
import modelo.Modelo;

/**
 * Servlet implementation class CargaHorario
 */
@WebServlet("/CargaHorario")
public class CargaHorario extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Horario hor;
	private final int HORA_INICIO = 10;
	private final int HORA_FIN = 13;
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CargaHorario() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	
    
	public void loadHorario(Integer salaId, LocalDate diaInicio, LocalDate diaFin) {
		LocalDateTime currentDateTime = LocalDate.from(diaInicio).atTime(HORA_INICIO, 0);
		
		while (!currentDateTime.toLocalDate().isAfter(diaFin)) {
			
			while (currentDateTime.getHour() < HORA_FIN) {
				Horario horario = new Horario(1, salaId, currentDateTime, currentDateTime.plusHours(1), true);
				
				Modelo modelo = new Modelo();
				modelo.setHor(hor);
				
				currentDateTime = currentDateTime.plusHours(1);
			}			
			currentDateTime = currentDateTime.plusDays(1).withHour(HORA_INICIO);
			System.out.println();
	}
		
		Modelo modelo = new Modelo();
		modelo.getListaSalas();
		
}
	
    
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	loadHorario(Integer.parseInt(request.getParameter("idSala")), LocalDate.parse("diaInicio"), LocalDate.parse("diaInicio"));
		}
		
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
