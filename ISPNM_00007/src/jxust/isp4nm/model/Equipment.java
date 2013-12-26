package jxust.isp4nm.model;

import java.util.LinkedList;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Transient;

import org.hibernate.annotations.GenericGenerator;

@Entity
public class Equipment {
	private int id;
	private String name;
	private String category;
	private String model;
	private String parameters;
	private String enterprise;
	private String price;
	private String provenance;
	private String info;
	
	//@Autowired(required=true)
	private List<Parameter> frontParameters = new LinkedList<Parameter>();
	private String price2;
	
	@Id
	@GeneratedValue(generator = "persistenceGenerator")    
	@GenericGenerator(name = "persistenceGenerator", strategy = "increment") 
	@Column(name="eq_id")
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	@Column(name="eq_name")
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	@Column(name="eq_category")
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	@Column(name="eq_parameters")
	public String getParameters() {
		return parameters;
	}
	public void setParameters(String parameters) {
		this.parameters = parameters;
	}
	@Column(name="eq_enterprise")
	public String getEnterprise() {
		return enterprise;
	}
	public void setEnterprise(String enterprise) {
		this.enterprise = enterprise;
	}
	@Column(name="eq_price")
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	@Column(name="eq_provenance")
	public String getProvenance() {
		return provenance;
	}
	public void setProvenance(String provenance) {
		this.provenance = provenance;
	}
	@Column(name="eq_info")
	public String getInfo() {
		return info;
	}
	public void setInfo(String info) {
		this.info = info;
	}
	@Column(name="eq_model")
	public String getModel() {
		return model;
	}
	public void setModel(String model) {
		this.model = model;
	}
	
	@Transient
	public List<Parameter> getFrontParameters() {
		return frontParameters;
	}
	public void setFrontParameters(List<Parameter> frontParameters) {
		this.frontParameters = frontParameters;
	}
		
	@Transient
	public String getPrice2() {
		return price2;
	}
	public void setPrice2(String price2) {
		this.price2 = price2;
	}

	public  class Parameter{
		public String key;
		public String value;
		
		public Parameter(String key, String value) {
			this.key = key;
			this.value = value;
		}
		
		public String getKey() {
			return key;
		}
		public void setKey(String key) {
			this.key = key;
		}
		public String getValue() {
			return value;
		}
		public void setValue(String value) {
			this.value = value;
		}
		
	}
	
	
}
