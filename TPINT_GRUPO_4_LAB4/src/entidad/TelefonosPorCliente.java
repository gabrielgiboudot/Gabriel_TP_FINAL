package entidad;

public class TelefonosPorCliente {

	public Usuarios Usuario;
	public String NumeroDeTelefono;
	
	public TelefonosPorCliente()
	{
		
	}
	
	public TelefonosPorCliente(Usuarios Usuario,String NumeroDeTelefono)
	{
		this.Usuario= Usuario;
		this.NumeroDeTelefono= NumeroDeTelefono;
	}

	public Usuarios getUsuario() {
		return Usuario;
	}

	public String getNumeroDeTelefono() {
		return NumeroDeTelefono;
	}

	public void setUsuario(Usuarios usuario) {
		this.Usuario = usuario;
	}

	public void setNumeroDeTelefono(String numeroDeTelefono) {
		NumeroDeTelefono = numeroDeTelefono;
	}	
	
	/* (non-Javadoc)
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "TelefonosPorCliente [usuario=" + Usuario + ", NumeroDeTelefono=" + NumeroDeTelefono + "]";
	}	
}
