package dao;

public class MySqlDaoFactory extends DaoFactory{

	@Override
	public UsuarioDao getUsuarioDao() {
		// TODO Auto-generated method stub
		return new MySqlUsuarioDao();
	}

	@Override
	public ProductoDao getProductoDao() {
		// TODO Auto-generated method stub
		return new MySqlProductoDao();
	}

}
