package modelo;

public class Actividad {
    private int idActividad;
    private String nombre;
    private int precio9Clases;
    private int precio14Clases;
    private int precioClasesLibre;

    public Actividad() {
    }

    public Actividad(int idActividad, String nombre, int precio9Clases, int precio14Clases, int precioClasesLibre) {
        this.idActividad = idActividad;
        this.nombre = nombre;
        this.precio9Clases = precio9Clases;
        this.precio14Clases = precio14Clases;
        this.precioClasesLibre = precioClasesLibre;
    }

    @Override
    public String toString() {
        return "Actividad{" + "idActividad=" + idActividad + ", nombre=" + nombre + ", precio9Clases=" + precio9Clases + ", precio14Clases=" + precio14Clases + ", precioClasesLibre=" + precioClasesLibre + '}';
    }

    public int getidActividad() {
        return idActividad;
    }

    public void setidActividad(int idActividad) {
        this.idActividad = idActividad;
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
    
    
}
