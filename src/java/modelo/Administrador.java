package modelo;

public class Administrador extends Persona{
    private int idAdministrador;
    private String cargo;

    public Administrador() {
    }
    
    public Administrador(int idAdministrador, String cargo, String nombre, String apellido, String documento, String usuario, String clave) {
        super(nombre, apellido, documento, usuario, clave);
        this.idAdministrador = idAdministrador;
        this.cargo = cargo;
    }

    @Override
    public String obtenerPrivilegio() {
        return "administrador";
    }
    
    public int getIdAdministrador() {
        return idAdministrador;
    }

    public void setIdAdministrador(int idAdministrador) {
        this.idAdministrador = idAdministrador;
    }

    public String getCargo() {
        return cargo;
    }

    public void setCargo(String cargo) {
        this.cargo = cargo;
    }
    
}
