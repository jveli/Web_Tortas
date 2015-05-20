package service;

import java.util.List;

import bean.AccesoBean;
import bean.DistritoBean;
import bean.UsuarioBean;
import dao.DaoFactory;
import dao.UsuarioDao;

public class UsuarioServiceImpl implements UsuarioService{

	DaoFactory factory = DaoFactory.getFactory(DaoFactory.MYSQL);
	UsuarioDao dao = factory.getUsuarioDao();

	
	@Override
	public UsuarioBean login(UsuarioBean usuarioBean) throws Exception {
		return dao.login(usuarioBean);
	}


	@Override
	public List<AccesoBean> traerAccesosDeUsuario(int idUsuario)throws Exception {
		return dao.traerAccesosDeUsuario(idUsuario);
	}


	@Override
	public int inserta(UsuarioBean bean) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}


	@Override
	public int elimina(int idUsuario) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}


	@Override
	public int actualiza(UsuarioBean bean) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}


	@Override
	public UsuarioBean obtienePorPK(int idUsuario) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}


	@Override
	public List<UsuarioBean> traeTodos() throws Exception {
		// TODO Auto-generated method stub
		return null;
	}


	@Override
	public List<DistritoBean> listarDistritos() throws Exception {
		// TODO Auto-generated method stub
		return null;
	}


	

	

}
