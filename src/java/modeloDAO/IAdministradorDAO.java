package modeloDAO;

import java.util.List;
import model.Administrador;

public interface IAdministradorDAO {
    public List<Administrador> getAdministradores();
    public Administrador getId(int id);
    public int add(Administrador c);
    public int update(Administrador c);
    public int delete(int id);
}
