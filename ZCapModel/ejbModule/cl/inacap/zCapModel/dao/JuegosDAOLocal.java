package cl.inacap.zCapModel.dao;

import java.util.ArrayList;
import java.util.List;

import javax.ejb.Local;

import cl.inacap.zCapModel.dto.Consola;
import cl.inacap.zCapModel.dto.Juego;

@Local
public interface JuegosDAOLocal {
	
	void save(Juego juego);
	List<Juego> getAll();
	void delete(Juego juego);
	List<Juego> filyerByNames(String nombre);
}
