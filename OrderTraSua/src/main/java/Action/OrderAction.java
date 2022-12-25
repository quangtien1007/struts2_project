package Action;

import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

import DAO.FoodDAO;
import DAO.OrderDAO;
import Model.Order;

public class OrderAction extends ActionSupport implements SessionAware {
	private List<Order> orderlist;
	private Order order;
	private int idnguoidung;
	private int idloaicaphe;
	private int soluong;
	private int gia;
	private int thanhtien;

	private String message;

	private Map<String, Object> session;

	public List<Order> getOrderlist() {
		return orderlist;
	}

	public void setOrderlist(List<Order> orderlist) {
		this.orderlist = orderlist;
	}

	public Order getOrder() {
		return order;
	}

	public void setOrder(Order order) {
		this.order = order;
	}

	public int getIdnguoidung() {
		return idnguoidung;
	}

	public void setIdnguoidung(int idnguoidung) {
		this.idnguoidung = idnguoidung;
	}

	public int getIdloaicaphe() {
		return idloaicaphe;
	}

	public void setIdloaicaphe(int idloaicaphe) {
		this.idloaicaphe = idloaicaphe;
	}

	public int getSoluong() {
		return soluong;
	}

	public void setSoluong(int soluong) {
		this.soluong = soluong;
	}

	public int getGia() {
		return gia;
	}

	public void setGia(int gia) {
		this.gia = gia;
	}

	public int getThanhtien() {
		return thanhtien;
	}

	public void setThanhtien(int thanhtien) {
		this.thanhtien = thanhtien;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public Map<String, Object> getSession() {
		return session;
	}

	public void setSession(Map<String, Object> session) {
		this.session = session;
	}

	public String list() {
		orderlist = new OrderDAO().getList();
		return SUCCESS;
	}

}
