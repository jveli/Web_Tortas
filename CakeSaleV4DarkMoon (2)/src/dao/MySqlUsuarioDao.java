package dao;

import java.io.IOException;
import java.io.Reader;
import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import bean.AccesoBean;
import bean.DistritoBean;
import bean.TipoBean;
import bean.UsuarioBean;

public class MySqlUsuarioDao implements UsuarioDao{

	SqlSessionFactory sqlMapper = null;
	{
		String archivo = "ConfiguracionIbatis.xml";
		try {
			Reader reader = Resources.getResourceAsReader(archivo);
			sqlMapper = new SqlSessionFactoryBuilder().build(reader);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	@Override
	public UsuarioBean login(UsuarioBean usuarioBean) throws Exception {
		SqlSession session = sqlMapper.openSession();
		UsuarioBean bean = null;
		try {
			bean = (UsuarioBean) session.selectOne("dawi.SQL_login", usuarioBean);
			return bean;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return null;
	}
	
	@SuppressWarnings({ "unchecked", "rawtypes" })
	@Override
	public List<AccesoBean> traerAccesosDeUsuario(int idUsuario)throws Exception {
			SqlSession session = sqlMapper.openSession();
			List lista = new ArrayList<AccesoBean>();
			try {
				lista = session.selectList("dawi.SQL_traerAccesosDeUsuario", idUsuario);
				return lista;
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				session.close();
			}
			return null;
	}
	
	@Override
	public int inserta(UsuarioBean bean) throws Exception {
		SqlSession session = sqlMapper.openSession();
		int salida = -1;
		try {
			salida = session.insert("dawi.SQL_registraUsuario", bean);
			session.commit();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return salida;
	}
	@Override
	public int elimina(int idUsuario) throws Exception {
		SqlSession session = sqlMapper.openSession();
		int salida = -1;
		try {
			salida = session.delete("dawi.SQL_eliminaUsuario", idUsuario);
			session.commit();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return salida;
	}
	
	@Override
	public int actualiza(UsuarioBean bean) throws Exception {
		SqlSession session = sqlMapper.openSession();
		int salida = -1;
		try {

			salida = session.update("dawi.SQL_actualizaUsuario", bean);
			session.commit();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return salida;
	}
	
	@Override
	public UsuarioBean obtienePorPK(int idUsuario) throws Exception {
		SqlSession session = sqlMapper.openSession();
		UsuarioBean bean = null;
		try {
			bean= (UsuarioBean)session.selectOne("dawi.SQL_buscaUsuario", idUsuario);
			return bean;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return null;
	}
	
	@Override
	@SuppressWarnings({ "rawtypes", "unchecked" })
	public List<UsuarioBean> traeTodos() throws Exception {
		SqlSession session = sqlMapper.openSession();
		List lista = new ArrayList<UsuarioBean>();
		try {
			lista =session.selectList("dawi.SQL_listaUsuario");
			return lista;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return null;
	}
	
	@Override
	@SuppressWarnings({ "rawtypes", "unchecked" })
	public List<DistritoBean> listarDistritos() throws Exception {
		SqlSession session = sqlMapper.openSession();
		List lista = new ArrayList<TipoBean>();
		try {
			lista =session.selectList("dawi.SQL_listaDistrito");
			return lista;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return null;
	}
}
