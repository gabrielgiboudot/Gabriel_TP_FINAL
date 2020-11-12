package negocio;

import java.util.List;
import entidad.Usuarios;

public interface UsuariosNeg {

	public List<Usuarios> obtenerTodos();
	public Usuarios obtenerUno(int id);
	public boolean insertar(Usuarios usuario);
	public boolean editar(Usuarios usuario);
	public boolean borrar(int id);
	
}
