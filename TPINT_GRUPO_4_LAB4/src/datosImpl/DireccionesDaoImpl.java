package datosImpl;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import datos.DireccionesDao;
import entidad.Direcciones;

public class DireccionesDaoImpl implements DireccionesDao{

	
	private Conexion cn;
	
	public DireccionesDaoImpl() {
		
	}
	
	@Override
	public List<Direcciones> obtenerTodos() {
		cn = new Conexion();
		cn.Open();
		
		List<Direcciones> list = new ArrayList<Direcciones>();
		try {
			
			ResultSet rs = cn.query("select IdDireccion, Direccion from direcciones");
			while(rs.next())
			{
				Direcciones dir = new Direcciones();
				dir.setIdDireccion(rs.getInt("IdDireccion"));
				dir.setDireccion(rs.getString("Direccion"));
				list.add(dir);
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

	@Override
	public Direcciones obtenerUno(int id) {
		cn = new Conexion();
		cn.Open();
		
		Direcciones dir = new Direcciones();
		
		try {
			ResultSet rs= cn.query("SELECT IdDireccion, Direccion WHERE IdDireccion = "+id); 
			rs.next();
			
			dir.setIdDireccion(rs.getInt("IdDireccion"));
			dir.setDireccion(rs.getString("Direccion"));
		
		} catch (Exception e) {
		
		}
		finally
		{
			cn.close();
		}
		return dir;
	}

	@Override
	public boolean insertar(Direcciones direccion) {
		
		boolean estado= true;
		
		cn= new Conexion();
		cn.Open();
		
		String query= "INSERT INTO direcciones (IdDireccion, Direccion) VALUES ('"+direccion.getIdDireccion()+"','"+direccion.getDireccion()+")";
		try {
			estado= cn.execute(query);
			
		} catch (Exception e) {
			
		}
		finally
		{
			cn.close();
		}
		return estado;
	}

	@Override
	public boolean editar(Direcciones direccion) {
		
		boolean estado= true;
		
		cn= new Conexion();
		cn.Open();
		
		String query= "UPDATE direcciones SET Direccion='"+direccion.getDireccion()+"'WHERE IdDireccion = '"+direccion.getIdDireccion()+"'";
		try {
			estado= cn.execute(query);
			
		} catch (Exception e) {
			
			e.printStackTrace();
		}
		finally
		{
			cn.close();
		}
		return estado;
	}

	@Override
	public boolean borrar(int id) {
		boolean estado= true;
		
		cn= new Conexion();
		cn.Open();
		
		String query= "DELETE FROM Direcciones WHERE IdDireccion='"+id+"'";
		try {
			estado= cn.execute(query);
			
		} catch (Exception e) {
			
			e.printStackTrace();
		}
		finally
		{
			cn.close();
		}
		return estado;
	}

}
