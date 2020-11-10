package entidad;

public class DireccionesPorCliente {



	private Usuarios Usuario;
	private Direcciones Direccion;
	private Localidades Localidad;
	
	
	public DireccionesPorCliente()
	{
		
	}
	
	public DireccionesPorCliente(Usuarios Usuario, Direcciones Direccion, Localidades Localidad)
	{
		this.Usuario = Usuario;
		this.Direccion = Direccion;
		this.Localidad= Localidad;
	}

	
	public Usuarios getUsuario() {
		return Usuario;
	}


	public Direcciones getDireccion() {
		return Direccion;
	}


	public Localidades getLocalidad() {
		return Localidad;
	}


	public void setUsuario(Usuarios usuario) {
		Usuario = usuario;
	}


	public void setDireccion(Direcciones direccion) {
		Direccion = direccion;
	}

	public void setLocalidad(Localidades localidad) {
		Localidad = localidad;
	}

	@Override
	public String toString() {
		return "DireccionesPorCliente [Usuario=" + Usuario.getIdUsuario() + ", Direccion=" + Direccion.getIdDireccion() + ", Localidad=" + Localidad.getIdLocalidad()
				+ "]";
	}
	
}
