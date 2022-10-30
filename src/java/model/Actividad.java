package model;

public class Actividad {
    private int idActividad;
    private String nombre;
    private int precio9Clases;
    private int precio14Clases;
    private int precioClasesLibre;
    private boolean disponible;

    public Actividad() {
    }

    public Actividad(int idActividad, String nombre, int precio9Clases, int precio14Clases, int precioClasesLibre, boolean disponible) {
        this.idActividad = idActividad;
        this.nombre = nombre;
        this.precio9Clases = precio9Clases;
        this.precio14Clases = precio14Clases;
        this.precioClasesLibre = precioClasesLibre;
        this.disponible = disponible;
    }
    
    @Override
    public String toString() {
        return "Actividad{" + "idActividad=" + idActividad + ", nombre=" + nombre + ", precio9Clases=" + precio9Clases + ", precio14Clases=" + precio14Clases + ", precioClasesLibre=" + precioClasesLibre + '}';
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public int getPrecio9Clases() {
        return precio9Clases;
    }

    public void setPrecio9Clases(int precio9Clases) {
        this.precio9Clases = precio9Clases;
    }

    public int getPrecio14Clases() {
        return precio14Clases;
    }

    public void setPrecio14Clases(int precio14Clases) {
        this.precio14Clases = precio14Clases;
    }

    public int getPrecioClasesLibre() {
        return precioClasesLibre;
    }

    public void setPrecioClasesLibre(int precioClasesLibre) {
        this.precioClasesLibre = precioClasesLibre;
    }

    public int getIdActividad() {
        return idActividad;
    }

    public void setIdActividad(int idActividad) {
        this.idActividad = idActividad;
    }

    public boolean isDisponible() {
        return disponible;
    }
    
    public boolean getDisponible() {
        return disponible;
    }

    public void setDisponible(boolean disponible) {
        this.disponible = disponible;
    }

    
}
