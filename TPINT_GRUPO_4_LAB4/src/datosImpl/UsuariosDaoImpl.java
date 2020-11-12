package datosImpl;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;


import datos.UsuariosDao;
import entidad.Usuarios;
import entidad.Generos;
import entidad.TiposDeUsuarios;

public class UsuariosDaoImpl implements UsuariosDao {

	private Conexion cn;
	
	public UsuariosDaoImpl() {
		
	}
	
	@Override
	public List<Usuarios> obtenerTodos() {
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		cn = new Conexion();
		cn.Open();
		
		List<Usuarios> list = new ArrayList<Usuarios>();
		try {
			
			ResultSet rs = cn.query("select IdUsuario,DNI,Cuil,Nombre,Apellido,FechaNacimiento,Email,NombreUsuario,Contraseña,U.IdGenero,ESTADO,U.IdTipoDeUsuario,G.DescripcionGenero,TU.DescripcionTipoDeUsuario from usuarios As U inner join generos As G ON G.IdGenero = U.IdGenero inner join tiposdeusuarios As TU ON TU.IdTipoDeUsuario = U.IdTipoDeUsuario");
			while(rs.next())
			{
				Usuarios user = new Usuarios();
				Generos gen = new Generos();
				TiposDeUsuarios TipoU = new TiposDeUsuarios();
				
				user.setIdUsuario(rs.getInt("IdUsuario"));
				user.setDni(rs.getString("DNI"));
				user.setCuil(rs.getString("Cuil"));
				user.setNombre(rs.getString("Nombre"));
				user.setApellido(rs.getString("Apellido"));
				user.setFechaNacimiento(rs.getDate("FechaNacimiento"));
				user.setEmail(rs.getString("Email"));
				user.setNombreUsuario(rs.getString("NombreUsuario"));
				user.setContraseña(rs.getString("Contraseña"));
				gen.setIdGenero(rs.getInt(10));
				gen.setDescripcionGenero(rs.getString(13));
				user.setGenero(gen);
				user.setEstado(rs.getBoolean("Estado"));
				TipoU.setIdTipoDeUsuario(rs.getInt(12));
				TipoU.setDescripcionTipoDeUsuario(rs.getString(14));
				user.setTipoDeUsuario(TipoU);
				
				list.add(user);
				
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
	public Usuarios obtenerUno(int id) {

		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		cn = new Conexion();
		cn.Open();
		
		Usuarios user = new Usuarios();
		Generos gen = new Generos();
		TiposDeUsuarios TipoU = new TiposDeUsuarios();
		
		try {
			ResultSet rs= cn.query("select IdUsuario,DNI,Cuil,Nombre,Apellido,FechaNacimiento,Email,NombreUsuario,Contraseña,U.IdGenero,ESTADO,U.IdTipoDeUsuario,G.DescripcionGenero,TU.DescripcionTipoDeUsuario from usuarios As U inner join generos As G ON G.IdGenero = U.IdGenero inner join tiposdeusuarios As TU ON TU.IdTipoDeUsuario = U.IdTipoDeUsuario where IdUsuario = "+id); 
			rs.next();
			
			user.setIdUsuario(rs.getInt("IdUsuario"));
			user.setDni(rs.getString("DNI"));
			user.setCuil(rs.getString("Cuil"));
			user.setNombre(rs.getString("Nombre"));
			user.setApellido(rs.getString("Apellido"));
			user.setFechaNacimiento(rs.getDate("FechaNacimiento"));
			user.setEmail(rs.getString("Email"));
			user.setNombreUsuario(rs.getString("NombreUsuario"));
			user.setContraseña(rs.getString("Contraseña"));
			gen.setIdGenero(rs.getInt(10));
			gen.setDescripcionGenero(rs.getString(13));
			user.setGenero(gen);
			user.setEstado(rs.getBoolean("Estado"));
			TipoU.setIdTipoDeUsuario(rs.getInt(12));
			TipoU.setDescripcionTipoDeUsuario(rs.getString(14));
			user.setTipoDeUsuario(TipoU);
		
		} catch (Exception e) {
		
		}
		finally
		{
			cn.close();
		}
		return user;
		
	}

	@Override
	public boolean insertar(Usuarios usuario) {
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		boolean estado= true;
		
		cn= new Conexion();
		cn.Open();
		
		String query= "INSERT INTO direcciones (DNI,Cuil,Nombre,Apellido,FechaNacimiento,Email,NombreUsuario,Contraseña,IdGenero,ESTADO,IdTipoDeUsuario) VALUES ('"+usuario.getDni()+"', '"+usuario.getCuil()+"', '"+usuario.getNombre()+"', '"+usuario.getApellido()+"', '"+usuario.getFechaNacimiento()+"', '"+usuario.getEmail()+"', '"+usuario.getNombreUsuario()+"', '"+usuario.getContraseña()+"', '"+usuario.getGenero().getIdGenero()+"','"+usuario.getEstado()+"', '"+usuario.getTipoDeUsuario().getIdTipoDeUsuario()+"');";
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
	public boolean editar(Usuarios usuario) {
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		boolean estado= true;
		
		cn= new Conexion();
		cn.Open();
		
		String query= "UPDATE `tp_banco`.`usuarios` SET `DNI` = '"+usuario.getDni()+"', `Cuil` = '"+usuario.getCuil()+"', `Nombre` = '"+usuario.getNombre()+"', `Apellido` = '"+usuario.getApellido()+"', `FechaNacimiento` = '"+usuario.getFechaNacimiento()+"', `Email` = '"+usuario.getEmail()+"', `NombreUsuario` = '"+usuario.getNombreUsuario()+"', `Contraseña` = '"+usuario.getContraseña()+"', `IdGenero` = '"+usuario.getGenero().getIdGenero()+"', `ESTADO` = '"+usuario.getEstado()+"', `IdTipoDeUsuario` = '"+usuario.getTipoDeUsuario().getIdTipoDeUsuario()+"' WHERE (`IdUsuario` = '"+usuario.getIdUsuario()+"');";
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
		
		String query= "DELETE FROM usuarios WHERE IdUsuario='"+id+"'";
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

	public Conexion getCn() {
		return cn;
	}

	public void setCn(Conexion cn) {
		this.cn = cn;
	}

}
