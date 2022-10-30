package modeloDAO;

import java.util.List;
import model.Actividad;

public interface IActividadDAO {
    public List<Actividad> getActividades();
    public Actividad getId(int id);
    public int add(Actividad a);
    public int update(Actividad a);
    public int delete(int id);
}
