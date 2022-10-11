package modelo;

import java.sql.Date;

public class Profesor extends Persona{
    private int idProfesor;
    private Date nacimiento;
    private String telefono;
    private String titulo;

    public Profesor() {
    }
    
    public Profesor(int idProfesor, Date nacimiento, String telefono, String titulo, String nombre, String apellido, String documento, String usuario, String clave) {
        super(nombre, apellido, documento, usuario, clave);
        this.idProfesor = idProfesor;
        this.nacimiento = nacimiento;
        this.telefono = telefono;
        this.titulo = titulo;
    }
    
    @Override
    public String obtenerPrivilegio() {
        return "profesor";
    }

    public int getIdProfesor() {
        return idProfesor;
    }

    public void setIdProfesor(int idProfesor) {
        this.idProfesor = idProfesor;
    }

    public Date getNacimiento() {
        return nacimiento;
    }

    public void setNacimiento(Date nacimiento) {
        this.nacimiento = nacimiento;
    }

    public String getTelefono() {
        return telefono;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }

    public String getTitulo() {
        return titulo;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }
    
}
