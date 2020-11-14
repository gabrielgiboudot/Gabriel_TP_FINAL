package datos;

import java.util.List;
import entidad.Usuarios;

public interface UsuariosDao {
	
	public List<Usuarios> obtenerTodos();
	public Usuarios obtenerUno(int id);
	public boolean insertar(Usuarios usuario);
	public boolean editar(Usuarios usuario);
	public boolean borrar(int id);
<<<<<<< HEAD
	public boolean cambiar_estado(int id);
	public boolean editar_clave(Usuarios usuario);
=======
	public Usuarios obtenerUnoxUsuario(String Usuario, String Password);
>>>>>>> d6e291f41f8032090f3c8cb5d5c4b61eb3a7e7f5
}
