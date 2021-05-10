package cl.inacap.zCapApp.controllers;

import java.io.IOException;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cl.inacap.zCapModel.dao.ConsolasDAO;
import cl.inacap.zCapModel.dto.Consola;

/**
 * Servlet implementation class VerConsolaController
 */
@WebServlet("/VerConsolaController.do")
public class VerConsolaController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	@Inject
	private ConsolasDAO consolasDAO;
	
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public VerConsolaController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		List<Consola> consolas= consolasDAO.getAll();
		
		if(request.getParameter("nombreEliminar") != null) {
			String nombre = request.getParameter("nombreEliminar").trim();
			//ir a eliminar el nombre
			List<Consola> busqueda = consolasDAO.filterByNames(nombre);
			 /* if(busqueda.isEmpty()){
			 consolaEliminar=null;
			 }else{
			 consolaEliminar = busqueda.get(0);
			 } */
			Consola consolaEliminar = busqueda.isEmpty()? null:busqueda.get(0);
			if(consolaEliminar != null) {
				consolasDAO.delete(consolaEliminar);
			}
		}
		
		request.setAttribute("consolas", consolas);
		request.getRequestDispatcher("WEB-INF/vistas/verConsola.jsp").forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	
		
		doGet(request, response);
	}

}
