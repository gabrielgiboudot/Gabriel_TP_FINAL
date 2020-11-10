package entidad;

public class Direcciones {
	
	private int IdDireccion;
	private String Direccion;
	
	
	public Direcciones()
	{
	}

	public Direcciones(int IdDireccion, String Direccion)
	{
		this.IdDireccion= IdDireccion;
		this.Direccion= Direccion;
	}
	


	public int getIdDireccion() {
		return IdDireccion;
	}


	public void setIdDireccion(int idDireccion) {
		IdDireccion = idDireccion;
	}


	public String getDireccion() {
		return Direccion;
	}


	public void setDireccion(String direccion) {
		Direccion = direccion;
	}
	

	@Override
	public String toString() {
		return "Direcciones [IdDireccion=" + IdDireccion + ", Direccion=" + Direccion + "]";
	}
	
	
}
