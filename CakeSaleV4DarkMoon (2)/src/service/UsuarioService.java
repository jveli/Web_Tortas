package service;

import java.util.List;

import bean.AccesoBean;
import bean.DistritoBean;
import bean.UsuarioBean;

public interface UsuarioService {
	public abstract UsuarioBean login(UsuarioBean usuarioBean) throws Exception;
	public abstract List<AccesoBean> traerAccesosDeUsuario(int idUsuario)throws Exception;
	
	public abstract int inserta(UsuarioBean bean) throws Exception;
	public abstract int elimina(int idUsuario) throws Exception;
	public abstract int actualiza(UsuarioBean bean) throws Exception;
	public abstract UsuarioBean obtienePorPK(int idUsuario) throws Exception;
	public abstract List<UsuarioBean> traeTodos() throws Exception;
	public abstract List<DistritoBean> listarDistritos() throws Exception;
}
