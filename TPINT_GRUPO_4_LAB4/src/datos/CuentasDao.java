package datos;

import java.util.List;

import entidad.Cuentas;

public interface CuentasDao {

		public List<Cuentas> ObtenerCuentas(int IdUsuario);
		public boolean insertar(Cuentas cuenta);
		public boolean modificar(Cuentas cuenta);
		public Cuentas obtenerCuenta(int NroCuenta);
}
