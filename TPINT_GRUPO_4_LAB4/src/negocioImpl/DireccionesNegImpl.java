package negocioImpl;

import java.util.ArrayList;
import java.util.List;
import datos.DireccionesDao;
import datosImpl.DireccionesDaoImpl;
import entidad.Direcciones;
import negocio.DireccionesNeg;

public class DireccionesNegImpl implements DireccionesNeg{

	private DireccionesDao dirDao = new DireccionesDaoImpl();
	
	
	public DireccionesNegImpl(DireccionesDao dirDao)
	{
		this.dirDao= dirDao;
	}
	
	
	public DireccionesNegImpl() {
	
	}
	
	
	@Override
	public List<Direcciones> obtenerDirecciones() {
		return (ArrayList<Direcciones>)dirDao.obtenerTodos();
	}

	@Override
	public Direcciones obtenerDireccion(int id) {
		return dirDao.obtenerUno(id);
	}

	@Override
	public boolean insertar(Direcciones direccion) {
		return dirDao.insertar(direccion);
	}

	@Override
	public boolean editar(Direcciones direccion) {
		return dirDao.editar(direccion);
	}

	@Override
	public boolean borrar(int id) {
			return dirDao.borrar(id);
	}

}
