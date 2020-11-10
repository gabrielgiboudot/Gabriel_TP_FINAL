package entidad;

public class Localidades {

	private int IdLocalidad;
	private String DescripcionLocalidad;
	private Provincias provincia;
	
	public Localidades()
	{
		
	}
	
	public Localidades(int IdLocalidad, String DescripcionLocalidad, Provincias provincia)
	{
		this.IdLocalidad = IdLocalidad;
		this.DescripcionLocalidad= DescripcionLocalidad;
		this.provincia = provincia;
	}

	public int getIdLocalidad() {
		return IdLocalidad;
	}

	public String getDescripcionLocalidad() {
		return DescripcionLocalidad;
	}

	public Provincias getProvincia() {
		return provincia;
	}

	public void setIdLocalidad(int idLocalidad) {
		IdLocalidad = idLocalidad;
	}

	public void setDescripcionLocalidad(String descripcionLocalidad) {
		DescripcionLocalidad = descripcionLocalidad;
	}

	public void setProvincia(Provincias provincia) {
		this.provincia = provincia;
	}	


	@Override
	public String toString() {
		return "Localidades [IdLocalidad=" + IdLocalidad + ", DescripcionLocalidad=" + DescripcionLocalidad
				+ ", provincia=" + provincia + "]";
	}




}
