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
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
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
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
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
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
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
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		boolean estado= true;
		
		cn= new Conexion();
		cn.Open();
		
		String query= "UPDATE usuarios SET direccion='"+direccion.getDireccion()+"'WHERE IdDireccion = '"+direccion.getIdDireccion()+"'";
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
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		boolean estado= true;
		
		cn= new Conexion();
		cn.Open();
		
		String query= "DELETE FROM direcciones WHERE IdDireccion='"+id+"'";
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
