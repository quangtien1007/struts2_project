package Action;

import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

import DAO.FoodDAO;
import Model.Food;
import Model.User;

public class KhachAction extends ActionSupport implements SessionAware {
	private List<Food> foodlist;
	private Food foodorder;
	private String tencaphe,hinhanh;
	

	public String getTencaphe() {
		return tencaphe;
	}

	public void setTencaphe(String tencaphe) {
		this.tencaphe = tencaphe;
	}

	public String getHinhanh() {
		return hinhanh;
	}

	public void setHinhanh(String hinhanh) {
		this.hinhanh = hinhanh;
	}

	private int idloaicaphe;
	private int soluong;
	private int gia;
	private int thanhtien;

	private String message;

	private Map<String, Object> session;

	@Override
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}

	public Map<String, Object> getSession() {
		return session;
	}

	public String getMessage() {
		return message;
	}

	public List getFoodlist() {
		return foodlist;
	}

	public Food getFoodorder() {
		return foodorder;
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

	public String home() {
		System.out.println("Welcome home");
		foodlist = new FoodDAO().getList();
		// request.setAttribute("list", list);
		return SUCCESS;
	}

	public String order() {
		System.out.println("Order");

		foodorder = new FoodDAO().getFoodByID(idloaicaphe);

		return SUCCESS;
	}

	public String submitorder() {
		System.out.println("Submit Order");

		User nd = (User) session.get("nguoidung");

		new FoodDAO().Order(nd.getId(), idloaicaphe, soluong, gia, thanhtien, tencaphe, hinhanh);

		message = "Đặt hàng thành công! Cảm ơn quý khách!";

		return home();
	}

}