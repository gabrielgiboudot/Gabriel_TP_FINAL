package datosImpl;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import datos.CuentasDao;
import entidad.Cuentas;
import entidad.Generos;
import entidad.TipoDeCuentas;
import entidad.TiposDeUsuarios;
import entidad.Usuarios;

public class CuentasDaoImpl implements CuentasDao {

	
	private Conexion cn;
	
	public CuentasDaoImpl()
	{
		
	}
	
	public List<Cuentas> ObtenerCuentas(int IdUsuario) {
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		cn= new Conexion();
		cn.Open();
		
		List<Cuentas> list =new ArrayList<Cuentas>();
		try {
			
			ResultSet rs = cn.query("SELECT u.IdUsuario, u.Apellido ,u.Cuil, c.NroDeCuenta, c.IdTipoDeCuenta, tc.Descripcion, c.FechaCreacion, c.CBU, c.Saldo FROM cuentas c right join usuarios u ON u.IdUsuario = c.IdUsuario LEFT JOIN tiposdecuentas tc ON c.IdTipoDeCuenta = tc.IdTipoDeCuenta WHERE u.IdUsuario = "+ IdUsuario);
			while(rs.next())
			{
				Cuentas c = new Cuentas();
				TipoDeCuentas tc = new TipoDeCuentas();
				Usuarios  u = new Usuarios();
				TiposDeUsuarios tu = new TiposDeUsuarios();
				Generos  g= new Generos();
				
				c.setNroDeCuenta(rs.getInt("c.NroDeCuenta"));
				tc.setIdTipodeCuenta(rs.getInt("c.IdTipoDeCuenta"));
				tc.setDescripcion(rs.getString("tc.Descripcion"));
				c.setFechaCreacion(rs.getDate("c.FechaCreacion"));
				c.setCbu(rs.getString("c.CBU"));
				c.setSaldo(rs.getFloat("c.Saldo"));
				u.setIdUsuario(rs.getInt("u.IdUsuario"));
				u.setApellido(rs.getString("u.Apellido"));
				u.setCuil(rs.getString("u.Cuil"));
				u.setGenero(g);
				u.setTipoDeUsuario(tu);
				c.setTipoDeCuenta(tc);
				c.setUsuario(u);
				
				list.add(c);
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		finally
		{
			cn.close();
		}
		
		
		return list;
	}

}