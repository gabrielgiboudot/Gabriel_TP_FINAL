package entidad;

public class PrestamosPorCliente {

	private Prestamos Prestamo;
	private Usuarios Usuario;
	private EstadosDePrestamo EstadoDePrestamo;
	
	
	
	public PrestamosPorCliente()
	{
		
	}

	public PrestamosPorCliente(Prestamos Prestamo, Usuarios Usuario, EstadosDePrestamo EstadoDePrestamo)
	{
		this.Prestamo= Prestamo;
		this.Usuario= Usuario;
		this.EstadoDePrestamo= EstadoDePrestamo;
	}



	public Prestamos getPrestamo() {
		return Prestamo;
	}


	public Usuarios getUsuario() {
		return Usuario;
	}


	public EstadosDePrestamo getEstadoDePrestamo() {
		return EstadoDePrestamo;
	}


	public void setPrestamo(Prestamos prestamo) {
		Prestamo = prestamo;
	}


	public void setUsuario(Usuarios usuario) {
		Usuario = usuario;
	}

	public void setEstadoDePrestamo(EstadosDePrestamo estadoDePrestamo) {
		EstadoDePrestamo = estadoDePrestamo;
	}

	@Override
	public String toString() {
		return "PrestamosPorCliente [Prestamo=" + Prestamo.getIdPrestamo() + ", Usuario=" + Usuario.getIdUsuario() + ", EstadoDePrestamo="
				+ EstadoDePrestamo.getIdEstado() + "]";
	}
	
}
