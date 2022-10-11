package modelo;

public abstract class Persona {
    protected String nombre;
    protected String apellido;
    protected String documento;
    protected String usuario;
    protected String clave;

    protected Persona() {
    }

    protected Persona(String nombre, String apellido, String documento, String usuario, String clave) {
        this.nombre = nombre;
        this.apellido = apellido;
        this.documento = documento;
        this.usuario = usuario;
        this.clave = clave;
    }
    
    protected abstract String obtenerPrivilegio();

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellido() {
        return apellido;
    }

    public void setApellido(String apellido) {
        this.apellido = apellido;
    }

    public String getDocumento() {
        return documento;
    }

    public void setDocumento(String documento) {
        this.documento = documento;
    }

    public String getUsuario() {
        return usuario;
    }

    public void setUsuario(String usuario) {
        this.usuario = usuario;
    }

    public String getClave() {
        return clave;
    }

    public void setClave(String clave) {
        this.clave = clave;
    }

}
