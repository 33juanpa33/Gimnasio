package model;

import java.sql.Date;
import java.util.ArrayList;
import java.util.List;

public class Cliente extends Persona{
    private int idCliente;
    private Date nacimiento;
    private String telefono;
    private String telefonoE;
    private Date pago;
    
    private List<Actividad> listaActividades = new ArrayList<Actividad>();

    public Cliente() {
    }

    public Cliente(int idCliente, Date nacimiento, String telefono, String telefonoE, Date pago, String nombre, String apellido, String documento, String usuario, String clave) {
        super(nombre, apellido, documento, usuario, clave);
        this.idCliente = idCliente;
        this.nacimiento = nacimiento;
        this.telefono = telefono;
        this.telefonoE = telefonoE;
        this.pago = pago;
    }

    @Override
    public String obtenerPrivilegio() {
        return "cliente";
    }
    
    public int getIdCliente() {
        return idCliente;
    }

    public void setIdCliente(int idCliente) {
        this.idCliente = idCliente;
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

    public String getTelefonoE() {
        return telefonoE;
    }

    public void setTelefonoE(String telefonoE) {
        this.telefonoE = telefonoE;
    }

    public Date getPago() {
        return pago;
    }

    public void setPago(Date pago) {
        this.pago = pago;
    }

    public List<Actividad> getListaActividades() {
        return listaActividades;
    }

    public void setListaActividades(List<Actividad> listaActividades) {
        this.listaActividades = listaActividades;
    }
    
    public void agregarActividad(Actividad actividad) {
        listaActividades.add(actividad);
    }

}