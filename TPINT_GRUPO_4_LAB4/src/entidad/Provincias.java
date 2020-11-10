package entidad;

public class Provincias {


	private int IdProvincia;
	private String DescripcionProvincia;
	
	public Provincias()
	{
		
	}
	
	public Provincias(int IdProvincia, String DescripcionProvincia)
	{
		this.IdProvincia = IdProvincia;
		this.DescripcionProvincia= DescripcionProvincia;
	}
	
	public int getIdProvincia() {
		return IdProvincia;
	}

	public String getDescripcionProvincia() {
		return DescripcionProvincia;
	}

	public void setIdProvincia(int idProvincia) {
		IdProvincia = idProvincia;
	}

	public void setDescripcionProvincia(String descripcionProvincia) {
		DescripcionProvincia = descripcionProvincia;
	}
	
	
	@Override
	public String toString() {
		return "Provincias [IdProvincia=" + IdProvincia + ", DescripcionProvincia=" + DescripcionProvincia + "]";
	}
	
	
}
