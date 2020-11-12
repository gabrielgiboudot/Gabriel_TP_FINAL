package negocio;

import java.util.List;
import entidad.Direcciones;

public interface DireccionesNeg {

	public List<Direcciones> obtenerTodos();
	public Direcciones obtenerUno(int id);
	public boolean insertar(Direcciones direccion);
	public boolean editar(Direcciones direccion);
	public boolean borrar(int id);
}
