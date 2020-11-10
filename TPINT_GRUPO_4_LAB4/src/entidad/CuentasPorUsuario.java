package entidad;

public class CuentasPorUsuario {

		private Cuentas Cuenta;
		private Usuarios Usuario;
		
	
		public CuentasPorUsuario()
		{
			
		}
		
		public CuentasPorUsuario(Cuentas Cuenta, Usuarios Usuario)
		{
			this.Cuenta= Cuenta;
			this.Usuario= Usuario;
			
		}

	public Cuentas getCuenta() {
		return Cuenta;
	}

	public Usuarios getUsuario() {
		return Usuario;
	}

	public void setCuenta(Cuentas cuenta) {
		Cuenta = cuenta;
	}


	public void setUsuario(Usuarios usuario) {
		Usuario = usuario;
	}

	
	/* (non-Javadoc)
 * @see java.lang.Object#toString()
 */
@Override
public String toString() {
	return "CuentasPorUsuario [Cuenta=" + Cuenta.getNroDeCuenta() + ", Usuario=" + Usuario.getIdUsuario() + "]";
}
	
	
}
