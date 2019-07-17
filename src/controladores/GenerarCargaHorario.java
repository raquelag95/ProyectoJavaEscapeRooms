package controladores;

import java.time.LocalDate;
import java.util.List;
import java.util.stream.Collectors;

import modelo.Salas;
import modelo.Modelo;

public class GenerarCargaHorario {

	public static void main(String[] args) {
		CargaHorario cargahorario = new CargaHorario();
		Modelo modelo = new Modelo();
		// TODO Auto-generated method stub
		List<Integer> salasId = modelo.getListaSalas().stream().map(Salas::getId).collect(Collectors.toList());
		System.out.println(salasId);
		
		for (Integer salaId : salasId) {
			cargahorario.loadHorario(salaId, LocalDate.now().plusDays(31), LocalDate.now().plusDays(60));
		}

	}

}
