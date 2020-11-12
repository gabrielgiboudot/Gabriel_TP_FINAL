package negocioImpl;

import java.util.ArrayList;
import java.util.List;
import datos.UsuariosDao;
import datosImpl.UsuariosDaoImpl;
import entidad.Usuarios;
import negocio.UsuariosNeg;

public class UsuariosNegImpl implements UsuariosNeg{

	private UsuariosDao userDao = new UsuariosDaoImpl();
	
	
	public UsuariosNegImpl(UsuariosDao dirDao)
	{
		this.userDao= dirDao;
	}
	
	
	public UsuariosNegImpl() {
	
	}
	
	@Override
	public ArrayList<Usuarios> obtenerTodos() {
		return (ArrayList<Usuarios>)userDao.obtenerTodos();
	}

	@Override
	public Usuarios obtenerUno(int id) {
		return 	userDao.obtenerUno(id);
	}

	@Override
	public boolean insertar(Usuarios usuario) {
		return userDao.insertar(usuario);
	}

	@Override
	public boolean editar(Usuarios usuario) {
		return userDao.editar(usuario);
	}

	@Override
	public boolean borrar(int id) {
		return userDao.borrar(id);
	}

}
