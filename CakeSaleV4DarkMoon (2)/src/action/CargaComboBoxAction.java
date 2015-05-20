package action;

import java.util.List;
import java.util.Map;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;

import service.ProductoService;
import service.ProductoServiceImpl;
import bean.CategoriaBean;
import bean.ProductoBean;
import bean.SubCategoriaBean;
import bean.TipoBean;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

@ParentPackage(value = "dawi")
public class CargaComboBoxAction extends ActionSupport{
	private static final long serialVersionUID = 1L;
	private List<CategoriaBean> lstCategoria;
	private List<SubCategoriaBean> lstSubCategoria;
	private List<TipoBean> lstTipo;
	private ProductoBean producto;
	private String categoria;
	private int valor;
	private Map<String, Object> session = (Map<String, Object>)ActionContext.getContext().getSession();
	private static final Log log = LogFactory.getLog(CargaComboBoxAction.class);
	private ProductoService service3 = new ProductoServiceImpl();


	
	@Action(value = "/cargaDinamicoTipoProducto", results = { @Result(name = "success", type="json") })
	public String cargaDinamicoTipoProducto() {
		System.out.println("Carga combo carga Dinamico TipoProducto");
		try {
			lstTipo = service3.listarTipos();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return SUCCESS;
	}
		
	@Action(value = "/cargaDinamicoCategoriaProducto", results = { @Result(name = "success", type="json") })
	public String cargaDinamicoCategoriaProducto() {
		
		System.out.println("Carga combo carga Dinamico CategoriaProducto");
		try {
			lstCategoria = service3.listarCategoria();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return SUCCESS;
	}
	
	@Action(value = "/cargaDinamicoSubCategoriaProducto", results = { @Result(name = "success", type="json") })
	public String cargaDinamicoSubCategoriaProducto() {
		
		System.out.println("Carga combo carga Dinamico SubCategoriaProducto");
		valor =producto.getCategoria().getIdCategoriaProducto();
		System.out.println(valor);
		
		try {
			lstSubCategoria = service3.listarSubCategoriaBean(valor);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return SUCCESS;
	}
	
	

	public List<TipoBean> getLstTipo() {
		return lstTipo;
	}
	public void setLstTipo(List<TipoBean> lstTipo) {
		this.lstTipo = lstTipo;
	}
	public List<SubCategoriaBean> getLstSubCategoria() {
		return lstSubCategoria;
	}
	public void setLstSubCategoria(List<SubCategoriaBean> lstSubCategoria) {
		this.lstSubCategoria = lstSubCategoria;
	}
	public String getCategoria() {
		return categoria;
	}
	public void setCategoria(String categoria) {
		this.categoria = categoria;
	}
	public ProductoBean getProducto() {
		return producto;
	}
	public void setProducto(ProductoBean producto) {
		this.producto = producto;
	}
	public int getValor() {
		return valor;
	}
	public void setValor(int valor) {
		this.valor = valor;
	}
	
	public List<CategoriaBean> getLstCategoria() {
		return lstCategoria;
	}

	public void setLstCategoria(List<CategoriaBean> lstCategoria) {
		this.lstCategoria = lstCategoria;
	}
}
