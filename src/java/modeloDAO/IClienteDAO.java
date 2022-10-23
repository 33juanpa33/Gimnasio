package modeloDAO;

import java.util.List;
import model.Cliente;

public interface IClienteDAO {
    public List<Cliente> getClientes();
    public Cliente getId(int id);
    public int add(Cliente c);
    public int update(Cliente c);
    public int delete(int id);
}
