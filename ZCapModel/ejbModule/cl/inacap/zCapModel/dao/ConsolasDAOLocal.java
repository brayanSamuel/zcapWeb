package cl.inacap.zCapModel.dao;

import java.util.List;

import javax.ejb.Local;

import cl.inacap.zCapModel.dto.Consola;

@Local
public interface ConsolasDAOLocal {
	
	void save(Consola consola);
	List<Consola> getAll();
	void delte(Consola consola);
	List<Consola> filyerByNames(String nombre);
	
	
	
}
