package entidad;

import java.sql.Timestamp;

public class Usuarios {

		private int IdUsuario;
		private int Dni;
		private String Cuil;
		private String Nombre;
		private String Apellido;
		private Timestamp FechaNacimiento;
		private String Email;
		private String NombreUsuario;
		private String Contraseña;
		private Generos Genero;
		private TiposDeUsuarios TipoDeUsuario;
		private boolean Estado;
		

   public Usuarios()
   {
	   
   }
		
   
   public Usuarios(int IdUsuario, int Dni, String Cuil, String Nombre, String Apellido, Timestamp FechaNacimiento, String Email, String NombreUsuario,String Contraseña,Generos Genero,TiposDeUsuarios TipoDeUsuario,Boolean Estado)
   {
	   this.IdUsuario=IdUsuario;
	   this.Dni= Dni;
	   this.Cuil= Cuil;
	   this.Nombre=Nombre;
	   this.Apellido= Apellido;
	   this.FechaNacimiento= FechaNacimiento;
	   this.Email= Email;
	   this.NombreUsuario= NombreUsuario;
	   this.Contraseña= Contraseña;
	   this.Genero= Genero;
	   this.TipoDeUsuario= TipoDeUsuario;
	   this.Estado= Estado;
   }
		
	public int getIdUsuario() {
		return IdUsuario;
	}

	public int getDni() {
		return Dni;
	}

	public String getCuil() {
		return Cuil;
	}

	public String getNombre() {
		return Nombre;
	}

	public String getApellido() {
		return Apellido;
	}

	public Timestamp getFechaNacimiento() {
		return FechaNacimiento;
	}

	public String getEmail() {
		return Email;
	}
	
	public String getNombreUsuario() {
		return NombreUsuario;
	}

	public String getContraseña() {
		return Contraseña;
	}

	public Generos getGenero() {
		return Genero;
	}

	public TiposDeUsuarios getTipoDeUsuario() {
		return TipoDeUsuario;
	}

	public boolean isEstado() {
		return Estado;
	}

	public void setIdUsuario(int idUsuario) {
		IdUsuario = idUsuario;
	}

	public void setDni(int dni) {
		Dni = dni;
	}

	public void setCuil(String cuil) {
		Cuil = cuil;
	}
	
	public void setNombre(String nombre) {
		Nombre = nombre;
	}

	public void setApellido(String apellido) {
		Apellido = apellido;
	}

	public void setFechaNacimiento(Timestamp fechaNacimiento) {
		FechaNacimiento = fechaNacimiento;
	}

	public void setEmail(String email) {
		Email = email;
	}

	public void setNombreUsuario(String nombreUsuario) {
		NombreUsuario = nombreUsuario;
	}
	
	public void setContraseña(String contraseña) {
		Contraseña = contraseña;
	}

	public void setGenero(Generos genero) {
		Genero = genero;
	}
	
	public void setTipoDeUsuario(TiposDeUsuarios tipoDeUsuario) {
		TipoDeUsuario = tipoDeUsuario;
	}

	public void setEstado(boolean estado) {
		Estado = estado;
	}
		

@Override
public String toString() {
	return "Usuarios [IdUsuario=" + IdUsuario + ", Dni=" + Dni + ", Cuil=" + Cuil + ", Nombre=" + Nombre
			+ ", Apellido=" + Apellido + ", FechaNacimiento=" + FechaNacimiento + ", Email=" + Email
			+ ", NombreUsuario=" + NombreUsuario + ", Contraseña=" + Contraseña + ", Genero=" + Genero
			+ ", TipoDeUsuario=" + TipoDeUsuario + ", Estado=" + Estado + "]";
}
	
}
